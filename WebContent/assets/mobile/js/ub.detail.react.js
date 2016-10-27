'use strict';

var UBInfo = React.createClass({
    displayName: 'UBInfo',

    getInitialState: function getInitialState() {
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
    loadCommentsFromServer: function loadCommentsFromServer() {
        var self = this;
        mui.getJSON($serverip + "api/ubTask/getTaskTalksById", {
            id: this.props.taskid
        }, function (mdata) {
            self.setState({ talks: mdata.talkinfo });
        });
    },
    componentDidMount: function componentDidMount() {
        mui.getJSON(this.props.api, {
            id: this.props.taskid
        }, function (mdata) {
            this.setState({ loading: false, info: mdata.taskinfo });
        }.bind(this));
        this.loadCommentsFromServer();
    },
    render: function render() {
        var taskid = this.props.taskid;
        return React.createElement(
            'div',
            { id: 'msg-list' },
            React.createElement(
                'div',
                { className: 'mui-card' },
                React.createElement(
                    'div',
                    { className: 'mui-card-content' },
                    React.createElement(
                        'div',
                        { className: 'mui-card-content-inner' },
                        React.createElement(
                            'div',
                            { className: 'ub-info-offer' },
                            React.createElement(
                                'div',
                                { style: {
                                        float: 'left'
                                    } },
                                React.createElement('span', { className: 'mui-icon mui-icon-contact' }),
                                '发布:',
                                React.createElement(
                                    'span',
                                    null,
                                    this.state.info.OfferName + " "
                                )
                            ),
                            React.createElement(
                                'div',
                                { style: {
                                        float: 'right',
                                        paddingTop: 2
                                    } },
                                '时间:',
                                React.createElement(
                                    'span',
                                    null,
                                    this.state.info.AddTimeFormat
                                )
                            ),
                            React.createElement('div', { style: {
                                    clear: 'both'
                                } })
                        ),
                        React.createElement(
                            'p',
                            { className: 'ub-info-text' },
                            React.createElement(
                                'span',
                                null,
                                this.state.info.Content
                            )
                        ),
                        React.createElement(
                            'p',
                            { className: 'ub-preview-image' },
                            this.state.info.IPath.split(',').map(function (fileName) {
                                if (fileName != "") return React.createElement('img', { src: $imagePath + fileName, 'data-preview-src': $imagePath + fileName, 'data-preview-group': taskid, key: fileName });
                            })
                        ),
                        React.createElement(
                            'p',
                            { className: 'ub-info-voice' },
                            this.state.info.VPath.split(',').map(function (fileName) {
                                if (fileName != "") return React.createElement(
                                    'button',
                                    { id: fileName + "_voice", type: 'button', key: fileName },
                                    React.createElement('img', { src: '/assets/ub/images/voice.png', style: {
                                            height: 11
                                        } }),
                                    React.createElement(
                                        'span',
                                        { id: fileName + "_hint" },
                                        '点击播放'
                                    )
                                );
                            })
                        ),
                        React.createElement(
                            'div',
                            { className: 'ub-info-other' },
                            React.createElement(
                                'div',
                                { style: {
                                        float: 'left'
                                    }, id: taskid + "_alertSet", className: this.state.info.Ahead == -1 ? "ub-hide" : "" },
                                React.createElement('span', { className: 'mui-icon-extra mui-icon-extra-outline' }),
                                '提醒:',
                                React.createElement(
                                    'span',
                                    { id: taskid + "_aheadFormat" },
                                    this.state.info.AheadFormat
                                )
                            ),
                            React.createElement(
                                'div',
                                { style: {
                                        float: 'right',
                                        paddingTop: 4
                                    } },
                                '截止:',
                                React.createElement(
                                    'span',
                                    null,
                                    this.state.info.EndDateFormat
                                )
                            ),
                            React.createElement('div', { style: {
                                    clear: 'both'
                                } })
                        ),
                        React.createElement(
                            'p',
                            { className: 'ub-info-other' },
                            React.createElement('span', { className: 'mui-icon mui-icon-person' }),
                            '执行:',
                            React.createElement(
                                'span',
                                null,
                                this.state.info.DoUserName + " "
                            )
                        ),
                        React.createElement(
                            'p',
                            { className: "ub-info-other " + (this.state.info.isOffer ? "" : "ub-hide") },
                            React.createElement('span', { className: 'mui-icon mui-icon-person' }),
                            '未知晓:',
                            React.createElement(
                                'span',
                                null,
                                this.state.info.NotGetUser + " "
                            )
                        ),
                        React.createElement(
                            'div',
                            { id: 'redoList' },
                            this.state.info.zfinfo.map(function (zf) {
                                return React.createElement(
                                    'p',
                                    { className: 'ub-info-other', key: zf.ID },
                                    React.createElement('span', { className: 'mui-icon mui-icon-redo' }),
                                    '交办:',
                                    React.createElement(
                                        'span',
                                        null,
                                        zf.DoUserName + " "
                                    ),
                                    '交办时间:',
                                    React.createElement(
                                        'span',
                                        null,
                                        zf.AddTimeFormat
                                    )
                                );
                            })
                        )
                    )
                )
            ),
            React.createElement(
                'div',
                { className: 'title', id: 'ub_talk_count' },
                React.createElement('span', { className: 'mui-icon mui-icon-chat' }),
                '总数:',
                React.createElement(
                    'span',
                    { className: 'mui-badge', id: 'imageCount' },
                    this.state.info.TalkCount
                )
            ),
            React.createElement(
                'div',
                { id: 'ub_talks' },
                this.state.talks.map(function (talk) {
                    var talkid = talk.ID;
                    return React.createElement(
                        'div',
                        { className: 'mui-card', key: talk.AddTime },
                        React.createElement(
                            'div',
                            { className: 'mui-card-content' },
                            React.createElement(
                                'div',
                                { className: 'mui-card-content-inner' },
                                React.createElement(
                                    'div',
                                    { className: 'ub-info-offer' },
                                    React.createElement(
                                        'div',
                                        { style: {
                                                float: 'left'
                                            } },
                                        React.createElement('span', { className: "mui-icon " + (talk.AddUserRole == 'offer' ? "mui-icon-contact" : "mui-icon-person") }),
                                        React.createElement(
                                            'span',
                                            null,
                                            talk.AddUserName + " "
                                        )
                                    ),
                                    React.createElement(
                                        'div',
                                        { style: {
                                                float: 'right',
                                                paddingTop: 2
                                            } },
                                        '时间:',
                                        React.createElement(
                                            'span',
                                            null,
                                            talk.talkTimeFormat
                                        )
                                    ),
                                    React.createElement('div', { style: {
                                            clear: 'both'
                                        } })
                                ),
                                React.createElement(
                                    'p',
                                    { className: 'ub-info-text' },
                                    React.createElement(
                                        'span',
                                        null,
                                        talk.Content
                                    )
                                ),
                                React.createElement(
                                    'p',
                                    { className: 'ub-preview-image' },
                                    talk.iPath.split(',').map(function (fileName) {
                                        if (fileName != "") return React.createElement('img', { src: $imagePath + fileName, 'data-preview-src': $imagePath + fileName, 'data-preview-group': talkid, key: fileName });
                                    })
                                ),
                                React.createElement(
                                    'p',
                                    { className: 'ub-info-voice' },
                                    talk.vPath.split(',').map(function (fileName) {
                                        if (fileName != "") return React.createElement(
                                            'button',
                                            { id: fileName + "_voice", type: 'button', key: fileName },
                                            React.createElement('img', { src: '/assets/ub/images/voice.png', style: {
                                                    height: 11
                                                } }),
                                            React.createElement(
                                                'span',
                                                { id: fileName + "_hint" },
                                                '点击播放'
                                            )
                                        );
                                    })
                                )
                            )
                        )
                    );
                })
            )
        );
    }
});

ReactDOM.render(React.createElement(UBInfo, { api: $serverip + "api/ubTask/getTaskById", taskid: $taskid }), document.getElementById('ub_info'));