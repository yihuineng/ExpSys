var UlPage = React.createClass({
    getInitialState: function() {
        return {loading: true, error: null, data: null};
    },
    componentDidMount: function() {
        mui.getJSON(this.props.api, {
            catalog: this.props.catalog,
            status: this.props.status,
            pageIndex: this.props.pageIndex,
            keyword: this.props.keyword
        }, function(pagedata) {
            this.setState({loading: false, data: pagedata.taskList, error: pagedata.result});
        }.bind(this));
    },
    render: function() {
        if (this.state.loading) {
            return <span>数据加载中...</span>;
        } else if (this.state.error != null) {
            return <span>{this.state.error.message}</span>;
        } else {
            var taskList = this.state.data;
            var Lis = taskList.map(function(task) {
                return (
                    <li className="mui-table-cell" key={task.ID} id={task.ID}>
                        <UlLi data={task} taskStatus={this.props.status}/>
                    </li>
                );
            }.bind(this));
        }
        return (
            <ul className="mui-table-view">
                {Lis}
            </ul>
        );
    }
});

var UlLi = React.createClass({
    render: function() {
        var taskid = this.props.data.ID;
        return (
            <div className="mui-card">
                <div className="mui-card-content">
                    <div className={"mui-card-content-inner " + ((this.props.data.isRead == -1)
                        ? "ub-unread"
                        : "")} >
                        <div className="ub-info-offer">
                            <div style={{
                                float: 'left'
                            }}>
                                <span className="mui-icon mui-icon-contact"></span>发布:<span>{this.props.data.OfferName + " "}</span>
                            </div>
                            <div style={{
                                float: 'right',
                                paddingTop: 2
                            }}>时间:<span>{this.props.data.AddTimeFormat}</span>
                            </div>
                            <div style={{clear:'both'}}></div>
                        </div>
                        <p className="ub-info-text">
                            <span>{this.props.data.Content}</span>
                        </p>
                        <p className="ub-preview-image">
                            {this.props.data.IPath.split(',').map(function(fileName) {
                                if (fileName != "")
                                    return (<img src={$imagePath + fileName} data-preview-src={$imagePath + fileName} data-preview-group={taskid} key={fileName}/>);
                                }
                            )
}
                        </p>
                        <p className="ub-info-voice">{this.props.data.VPath.split(',').map(function(fileName) {
                                if (fileName != "")
                                    return (
                                        <button id={fileName + "_voice"} type="button" key={fileName}>
                                            <img src="/assets/ub/images/voice.png" style={{
                                                height: 11
                                            }}/>
                                            <span id={fileName + "_hint"}> 点击播放</span>
                                        </button>
                                    );
                                }
                            )
}
                        </p>
                        <p id={taskid + "_alertSet"} className={"ub-info-other " + ((this.props.data.Ahead == -1)
                            ? "ub-hide"
                            : "")}>
                            <span className="mui-icon-extra mui-icon-extra-outline"></span>提醒:<span id={taskid + "_aheadFormat"}>{this.props.data.AheadFormat}</span>
                        </p>
                        <div className="ub-info-other">
                            <div style={{
                                float: 'left'
                            }}>
                                <span className="mui-icon mui-icon-person"></span>执行:<span>{this.props.data.DoUserName + " "}</span>
                            </div>
                            <div style={{
                                float: 'right',
                                paddingTop: 2
                            }}>截止:<span>{this.props.data.EndDateFormat}</span>
                            </div>
                            <div style={{
                                clear: 'both'
                            }}></div>
                        </div>
                        <div id="redoList">
                            {this.props.data.zfinfo.map(function(zf) {
                                return (
                                <div className="ub-info-other" key={zf.ID}>
                                    <div style={{
                                        float: 'left'
                                    }}>
                                        <span className="mui-icon mui-icon-redo"></span>交办:<span>{zf.DoUserName + " "}</span>
                                    </div>
                                    <div style={{
                                        float: 'right',
                                        paddingTop: 2
                                    }}>时间:<span>{zf.AddTimeFormat}</span>
                                    </div>
                                    <div style={{
                                        clear: 'both'
                                    }}></div>
                                </div>
                                )
                            })
}
                        </div>
                    </div>
                </div>
                <Footer taskStatus={this.props.taskStatus} taskid={taskid} isOffer={this.props.data.isOffer}/>
            </div>
        );
    }
});

//头部导航 执行中 已完成 已取消 数量 初次载入和页面调用使用
var Bandage = React.createClass({
    getInitialState: function() {
        return {
            data: [
                {
                    doingNum: 0
                }, {
                    finishNum: 0
                }, {
                    cancelNum: 0
                }
            ]
        };
    },
    componentDidMount: function() {
        mui.getJSON(this.props.api, {}, function(mdata) {
            this.setState({data: mdata});
        }.bind(this));
    },
    render: function() {
        return (
            <div>
                <a className="mui-control-item" href="#Doing">
                    执行中
                    <span className={"mui-badge mui-badge-danger " + ((this.state.data.doingNum == 0)
                        ? "ub-hide"
                        : "")}>{this.state.data.doingNum}</span>
                </a>
                <a className="mui-control-item" href="#Finish">
                    已完成
                    <span className={"mui-badge mui-badge-danger " + ((this.state.data.finishNum == 0)
                        ? "ub-hide"
                        : "")}>{this.state.data.finishNum}</span>
                </a>
                <a className="mui-control-item" href="#Cancel">
                    已取消
                    <span className={"mui-badge mui-badge-danger " + ((this.state.data.cancelNum == 0)
                        ? "ub-hide"
                        : "")}>{this.state.data.cancelNum}</span>
                </a>
            </div>
        );
    }
});

//footer底部链接组件
var Footer = React.createClass({
    render: function() {
        if (this.props.taskStatus == "doing") {
            return (
                <div className="mui-card-footer">
                    <a className="mui-card-link" name={this.props.taskid + "_reply"}>
                        <span className="mui-icon mui-icon-chatboxes"></span>详情</a>
                    <a className="mui-card-link" name={this.props.taskid + "_toOther"}>
                        <span className="mui-icon mui-icon-redo"></span>交办</a>
                    <a className="mui-card-link" name={this.props.taskid + "_toLog"}>
                        <span className="mui-icon mui-icon-compose"></span>转日志</a>
                    <a className="mui-card-link" name={this.props.taskid + "_remind"} href="#Popover">
                        <span className="mui-icon-extra mui-icon-extra-outline"></span>提醒</a>
                    <a className={"mui-card-link " + (this.props.isOffer
                        ? ""
                        : "ub-hide")} name={this.props.taskid + "_cancel"}>
                        <span className="mui-icon mui-icon-close"></span>取消</a>
                </div>
            )
        } else if (this.props.taskStatus == "finish") {
            return (
                <div className="mui-card-footer">
                    <a className="mui-card-link" name={this.props.taskid + "_reply"}>
                        <span className="mui-icon mui-icon-chatboxes"></span>详情</a>
                    <a className={"mui-card-link " + (this.props.isOffer
                        ? ""
                        : "ub-hide")} name={this.props.taskid + "_redo"}>
                        <span className="mui-icon mui-icon-reload"></span>重新执行</a>
                </div>
            )
        } else { //cancel
            return (
                <div className="mui-card-footer">
                    <a className="mui-card-link" name={this.props.taskid + "_reply"}>
                        <span className="mui-icon mui-icon-chatboxes"></span>详情</a>
                    <a className={"mui-card-link " + (this.props.isOffer
                        ? ""
                        : "ub-hide")} name={this.props.taskid + "_redo"}>
                        <span className="mui-icon mui-icon-undo"></span>恢复</a>
                    <a className={"mui-card-link " + (this.props.isOffer
                        ? ""
                        : "ub-hide")} name={this.props.taskid + "_delete"}>
                        <span className="mui-icon mui-icon-close"></span>删除</a>
                </div>
            )
        }

    }
});
//头部导航渲染
ReactDOM.render(
    <Bandage api={$serverip + "api/ubTask/getNotReadNum"}/>, document.getElementById('headNavi'));
//加载缓冲区
ReactDOM.render(
    <UlPage api={$serverip + "api/ubTask/taskList"} catalog={$searchType} status="doing" pageIndex="1" keyword={$keyword}/>, document.getElementById('temp1'));
ReactDOM.render(
    <UlPage api={$serverip + "api/ubTask/taskList"} catalog={$searchType} status="finish" pageIndex="1" keyword={$keyword}/>, document.getElementById('temp2'));
ReactDOM.render(
    <UlPage api={$serverip + "api/ubTask/taskList"} catalog={$searchType} status="cancel" pageIndex="1" keyword={$keyword}/>, document.getElementById('temp3'));
