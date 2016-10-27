"use strict";

var UlPage = React.createClass({
    displayName: "UlPage",

    getInitialState: function getInitialState() {
        return { loading: true, error: null, data: null };
    },
    componentDidMount: function componentDidMount() {
        mui.getJSON(this.props.api, {
            catalog: this.props.catalog,
            status: this.props.status,
            pageIndex: this.props.pageIndex,
            keyword: this.props.keyword
        }, function (pagedata) {
            this.setState({ loading: false, data: pagedata.taskList, error: pagedata.result });
        }.bind(this));
    },
    render: function render() {
        if (this.state.loading) {
            return React.createElement(
                "span",
                null,
                "数据加载中..."
            );
        } else if (this.state.error != null) {
            return React.createElement(
                "span",
                null,
                this.state.error.message
            );
        } else {
            var taskList = this.state.data;
            var Lis = taskList.map(function (task) {
                return React.createElement(
                    "li",
                    { className: "mui-table-cell", key: task.ID, id: task.ID },
                    React.createElement(UlLi, { data: task, taskStatus: this.props.status })
                );
            }.bind(this));
        }
        return React.createElement(
            "ul",
            { className: "mui-table-view" },
            Lis
        );
    }
});

var UlLi = React.createClass({
    displayName: "UlLi",

    render: function render() {
        var taskid = this.props.data.ID;
        return React.createElement(
            "div",
            { className: "mui-card" },
            React.createElement(
                "div",
                { className: "mui-card-content" },
                React.createElement(
                    "div",
                    { className: "mui-card-content-inner " + (this.props.data.isRead == -1 ? "ub-unread" : "") },
                    React.createElement(
                        "div",
                        { className: "ub-info-offer" },
                        React.createElement(
                            "div",
                            { style: {
                                    float: 'left'
                                } },
                            React.createElement("span", { className: "mui-icon mui-icon-contact" }),
                            "发布:",
                            React.createElement(
                                "span",
                                null,
                                this.props.data.OfferName + " "
                            )
                        ),
                        React.createElement(
                            "div",
                            { style: {
                                    float: 'right',
                                    paddingTop: 2
                                } },
                            "时间:",
                            React.createElement(
                                "span",
                                null,
                                this.props.data.AddTimeFormat
                            )
                        ),
                        React.createElement("div", { style: { clear: 'both' } })
                    ),
                    React.createElement(
                        "p",
                        { className: "ub-info-text" },
                        React.createElement(
                            "span",
                            null,
                            this.props.data.Content
                        )
                    ),
                    React.createElement(
                        "p",
                        { className: "ub-preview-image" },
                        this.props.data.IPath.split(',').map(function (fileName) {
                            if (fileName != "") return React.createElement("img", { src: $imagePath + fileName, "data-preview-src": $imagePath + fileName, "data-preview-group": taskid, key: fileName });
                        })
                    ),
                    React.createElement(
                        "p",
                        { className: "ub-info-voice" },
                        this.props.data.VPath.split(',').map(function (fileName) {
                            if (fileName != "") return React.createElement(
                                "button",
                                { id: fileName + "_voice", type: "button", key: fileName },
                                React.createElement("img", { src: "/assets/ub/images/voice.png", style: {
                                        height: 11
                                    } }),
                                React.createElement(
                                    "span",
                                    { id: fileName + "_hint" },
                                    " 点击播放"
                                )
                            );
                        })
                    ),
                    React.createElement(
                        "p",
                        { id: taskid + "_alertSet", className: "ub-info-other " + (this.props.data.Ahead == -1 ? "ub-hide" : "") },
                        React.createElement("span", { className: "mui-icon-extra mui-icon-extra-outline" }),
                        "提醒:",
                        React.createElement(
                            "span",
                            { id: taskid + "_aheadFormat" },
                            this.props.data.AheadFormat
                        )
                    ),
                    React.createElement(
                        "div",
                        { className: "ub-info-other" },
                        React.createElement(
                            "div",
                            { style: {
                                    float: 'left'
                                } },
                            React.createElement("span", { className: "mui-icon mui-icon-person" }),
                            "执行:",
                            React.createElement(
                                "span",
                                null,
                                this.props.data.DoUserName + " "
                            )
                        ),
                        React.createElement(
                            "div",
                            { style: {
                                    float: 'right',
                                    paddingTop: 2
                                } },
                            "截止:",
                            React.createElement(
                                "span",
                                null,
                                this.props.data.EndDateFormat
                            )
                        ),
                        React.createElement("div", { style: {
                                clear: 'both'
                            } })
                    ),
                    React.createElement(
                        "div",
                        { id: "redoList" },
                        this.props.data.zfinfo.map(function (zf) {
                            return React.createElement(
                                "div",
                                { className: "ub-info-other", key: zf.ID },
                                React.createElement(
                                    "div",
                                    { style: {
                                            float: 'left'
                                        } },
                                    React.createElement("span", { className: "mui-icon mui-icon-redo" }),
                                    "交办:",
                                    React.createElement(
                                        "span",
                                        null,
                                        zf.DoUserName + " "
                                    )
                                ),
                                React.createElement(
                                    "div",
                                    { style: {
                                            float: 'right',
                                            paddingTop: 2
                                        } },
                                    "时间:",
                                    React.createElement(
                                        "span",
                                        null,
                                        zf.AddTimeFormat
                                    )
                                ),
                                React.createElement("div", { style: {
                                        clear: 'both'
                                    } })
                            );
                        })
                    )
                )
            ),
            React.createElement(Footer, { taskStatus: this.props.taskStatus, taskid: taskid, isOffer: this.props.data.isOffer })
        );
    }
});

//头部导航 执行中 已完成 已取消 数量 初次载入和页面调用使用
var Bandage = React.createClass({
    displayName: "Bandage",

    getInitialState: function getInitialState() {
        return {
            data: [{
                doingNum: 0
            }, {
                finishNum: 0
            }, {
                cancelNum: 0
            }]
        };
    },
    componentDidMount: function componentDidMount() {
        mui.getJSON(this.props.api, {}, function (mdata) {
            this.setState({ data: mdata });
        }.bind(this));
    },
    render: function render() {
        return React.createElement(
            "div",
            null,
            React.createElement(
                "a",
                { className: "mui-control-item", href: "#Doing" },
                "执行中",
                React.createElement(
                    "span",
                    { className: "mui-badge mui-badge-danger " + (this.state.data.doingNum == 0 ? "ub-hide" : "") },
                    this.state.data.doingNum
                )
            ),
            React.createElement(
                "a",
                { className: "mui-control-item", href: "#Finish" },
                "已完成",
                React.createElement(
                    "span",
                    { className: "mui-badge mui-badge-danger " + (this.state.data.finishNum == 0 ? "ub-hide" : "") },
                    this.state.data.finishNum
                )
            ),
            React.createElement(
                "a",
                { className: "mui-control-item", href: "#Cancel" },
                "已取消",
                React.createElement(
                    "span",
                    { className: "mui-badge mui-badge-danger " + (this.state.data.cancelNum == 0 ? "ub-hide" : "") },
                    this.state.data.cancelNum
                )
            )
        );
    }
});

//footer底部链接组件
var Footer = React.createClass({
    displayName: "Footer",

    render: function render() {
        if (this.props.taskStatus == "doing") {
            return React.createElement(
                "div",
                { className: "mui-card-footer" },
                React.createElement(
                    "a",
                    { className: "mui-card-link", name: this.props.taskid + "_reply" },
                    React.createElement("span", { className: "mui-icon mui-icon-chatboxes" }),
                    "详情"
                ),
                React.createElement(
                    "a",
                    { className: "mui-card-link", name: this.props.taskid + "_toOther" },
                    React.createElement("span", { className: "mui-icon mui-icon-redo" }),
                    "交办"
                ),
                React.createElement(
                    "a",
                    { className: "mui-card-link", name: this.props.taskid + "_toLog" },
                    React.createElement("span", { className: "mui-icon mui-icon-compose" }),
                    "转日志"
                ),
                React.createElement(
                    "a",
                    { className: "mui-card-link", name: this.props.taskid + "_remind", href: "#Popover" },
                    React.createElement("span", { className: "mui-icon-extra mui-icon-extra-outline" }),
                    "提醒"
                ),
                React.createElement(
                    "a",
                    { className: "mui-card-link " + (this.props.isOffer ? "" : "ub-hide"), name: this.props.taskid + "_cancel" },
                    React.createElement("span", { className: "mui-icon mui-icon-close" }),
                    "取消"
                )
            );
        } else if (this.props.taskStatus == "finish") {
            return React.createElement(
                "div",
                { className: "mui-card-footer" },
                React.createElement(
                    "a",
                    { className: "mui-card-link", name: this.props.taskid + "_reply" },
                    React.createElement("span", { className: "mui-icon mui-icon-chatboxes" }),
                    "详情"
                ),
                React.createElement(
                    "a",
                    { className: "mui-card-link " + (this.props.isOffer ? "" : "ub-hide"), name: this.props.taskid + "_redo" },
                    React.createElement("span", { className: "mui-icon mui-icon-reload" }),
                    "重新执行"
                )
            );
        } else {
            //cancel
            return React.createElement(
                "div",
                { className: "mui-card-footer" },
                React.createElement(
                    "a",
                    { className: "mui-card-link", name: this.props.taskid + "_reply" },
                    React.createElement("span", { className: "mui-icon mui-icon-chatboxes" }),
                    "详情"
                ),
                React.createElement(
                    "a",
                    { className: "mui-card-link " + (this.props.isOffer ? "" : "ub-hide"), name: this.props.taskid + "_redo" },
                    React.createElement("span", { className: "mui-icon mui-icon-undo" }),
                    "恢复"
                ),
                React.createElement(
                    "a",
                    { className: "mui-card-link " + (this.props.isOffer ? "" : "ub-hide"), name: this.props.taskid + "_delete" },
                    React.createElement("span", { className: "mui-icon mui-icon-close" }),
                    "删除"
                )
            );
        }
    }
});
//头部导航渲染
ReactDOM.render(React.createElement(Bandage, { api: $serverip + "api/ubTask/getNotReadNum" }), document.getElementById('headNavi'));
//加载缓冲区
ReactDOM.render(React.createElement(UlPage, { api: $serverip + "api/ubTask/taskList", catalog: $searchType, status: "doing", pageIndex: "1", keyword: $keyword }), document.getElementById('temp1'));
ReactDOM.render(React.createElement(UlPage, { api: $serverip + "api/ubTask/taskList", catalog: $searchType, status: "finish", pageIndex: "1", keyword: $keyword }), document.getElementById('temp2'));
ReactDOM.render(React.createElement(UlPage, { api: $serverip + "api/ubTask/taskList", catalog: $searchType, status: "cancel", pageIndex: "1", keyword: $keyword }), document.getElementById('temp3'));