var UBInfo = React.createClass({
    getInitialState: function() {
        return {
            loading: true,
            info: {
                AddUserName: '',
                AddRimeFormat: '',
                Content: '',
                IPath: '',
                VPath: '',
                Ahead: -1,
                AheadFormat: '',
                DoUserName: '',
                EndDateFormat: '',
                zfinfo: [],
                TalkCount: ''
            },
            talks: []
        };
    },
    loadCommentsFromServer: function() {
        var self = this;
        mui.getJSON($serverip + "api/ubTask/getTaskTalksById", {
            id: this.props.taskid
        }, function(mdata) {
            self.setState({talks: mdata.talkinfo});
        });
    },
    componentDidMount: function() {
        mui.getJSON(this.props.api, {
            id: this.props.taskid
        }, function(mdata) {
            this.setState({loading: false, info: mdata.taskinfo});
        }.bind(this));
        this.loadCommentsFromServer();
    },
    render: function() {
        var taskid = this.props.taskid;
        return (
            <div id='msg-list'>
                <div className="mui-card">
                    <div className="mui-card-content">
                        <div className="mui-card-content-inner">
                            <div className="ub-info-offer">
                                <div style={{
                                    float: 'left'
                                }}>
                                    <span className="mui-icon mui-icon-contact"></span>发布:<span>{this.state.info.OfferName + " "}</span>
                                </div>
                                <div style={{
                                    float: 'right',
                                    paddingTop: 2
                                }}>时间:<span>{this.state.info.AddTimeFormat}</span>
                                </div>
                                <div style={{
                                    clear: 'both'
                                }}></div>
                            </div>
                            <p className="ub-info-text">
                                <span>{this.state.info.Content}</span>
                            </p>
                            <p className="ub-preview-image">
                                {this.state.info.IPath.split(',').map(function(fileName) {
                                    if (fileName != "")
                                        return (<img src={$imagePath + fileName} data-preview-src={$imagePath + fileName} data-preview-group={taskid} key={fileName}/>);
                                    }
                                )
}
                            </p>
                            <p className="ub-info-voice">{this.state.info.VPath.split(',').map(function(fileName) {
                                    if (fileName != "")
                                        return (
                                            <button id={fileName + "_voice"} type="button" key={fileName}>
                                                <img src="/assets/ub/images/voice.png" style={{
                                                    height: 11
                                                }}/>
                                                <span id={fileName + "_hint"}>
                                                    点击播放</span>
                                            </button>
                                        );
                                    }
                                )
}
                            </p>
                            <div className="ub-info-other">
                                <div style={{
                                    float: 'left'
                                }} id={taskid + "_alertSet"} className={((this.state.info.Ahead == -1)
                                    ? "ub-hide"
                                    : "")}>
                                    <span className="mui-icon-extra mui-icon-extra-outline"></span>提醒:<span id={taskid + "_aheadFormat"}>{this.state.info.AheadFormat}</span>
                                </div>
                                <div style={{
                                    float: 'right',
                                    paddingTop: 4
                                }}>截止:<span>{this.state.info.EndDateFormat}</span>
                                </div>
                                <div style={{
                                    clear: 'both'
                                }}></div>
                            </div>
                            <p className="ub-info-other">
                                <span className="mui-icon mui-icon-person"></span>执行:<span>{this.state.info.DoUserName + " "}</span>
                            </p>
                            <p className={"ub-info-other " + (this.state.info.isOffer
                                ? ""
                                : "ub-hide")}>
                                <span className="mui-icon mui-icon-person"></span>未知晓:<span>{this.state.info.NotGetUser + " "}</span>
                            </p>
                            <div id="redoList">
                                {this.state.info.zfinfo.map(function(zf) {
                                    return (
                                        <p className="ub-info-other" key={zf.ID}>
                                            <span className="mui-icon mui-icon-redo"></span>交办:<span>{zf.DoUserName + " "}</span>
                                            交办时间:<span>{zf.AddTimeFormat}</span>
                                        </p>
                                    )
                                })
}
                            </div>
                        </div>
                    </div>
                </div>

                <div className="title" id="ub_talk_count">
                    <span className="mui-icon mui-icon-chat"></span>总数:<span className="mui-badge" id="imageCount">{this.state.info.TalkCount}</span>
                </div>
                <div id="ub_talks">
                    {this.state.talks.map(function(talk) {
                        var talkid = talk.ID;
                        return (
                            <div className="mui-card" key={talk.AddTime}>
                                <div className="mui-card-content">
                                    <div className="mui-card-content-inner">
                                        <div className="ub-info-offer">
                                            <div style={{
                                                float: 'left'
                                            }}>
                                                <span className={"mui-icon " + ((talk.AddUserRole == 'offer')
                                                    ? "mui-icon-contact"
                                                    : "mui-icon-person")}></span>
                                                <span>{talk.AddUserName + " "}
                                                </span>
                                            </div>
                                            <div style={{
                                                float: 'right',
                                                paddingTop: 2
                                            }}>时间:
                                                <span>{talk.talkTimeFormat}</span>
                                            </div>
                                            <div style={{
                                                clear: 'both'
                                            }}></div>
                                        </div>
                                        <p className="ub-info-text">
                                            <span>{talk.Content}</span>
                                        </p>
                                        <p className="ub-preview-image">
                                            {talk.iPath.split(',').map(function(fileName) {
                                                if (fileName != "")
                                                    return (<img src={$imagePath + fileName} data-preview-src={$imagePath + fileName} data-preview-group={talkid} key={fileName}/>);
                                                }
                                            )
}
                                        </p>
                                        <p className="ub-info-voice">{talk.vPath.split(',').map(function(fileName) {
                                                if (fileName != "")
                                                    return (
                                                        <button id={fileName + "_voice"} type="button" key={fileName}>
                                                            <img src="/assets/ub/images/voice.png" style={{
                                                                height: 11
                                                            }}/>
                                                            <span id={fileName + "_hint"}>
                                                                点击播放</span>
                                                        </button>
                                                    );
                                                }
                                            )
}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        )
                    })}

                </div>
            </div>

        );
    }
});

ReactDOM.render(
    <UBInfo api={$serverip + "api/ubTask/getTaskById"} taskid={$taskid}/>, document.getElementById('ub_info'));
