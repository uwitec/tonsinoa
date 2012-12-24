<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TonSinOA._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
    <link href="js/extjs/resources/css/ext-all.css" rel="stylesheet" type="text/css" />
    <script src="js/extjs/adapter/ext/ext-base.js" type="text/javascript"></script>
    <link href="js/artDialog/skins/default.css" rel="stylesheet" type="text/css" />
    <link href="css/global.css" rel="stylesheet" type="text/css" />
    <script src="js/extjs/ext-all.js" type="text/javascript"></script>
    <script src="js/bottom.js" type="text/javascript"></script>
    <script src="js/rightKeyTabPanel.js" type="text/javascript"></script>
    <script src="js/theme.js" type="text/javascript"></script>
    <script src="js/comm.js" type="text/javascript"></script>
    <script src="js/artDialog/artDialog.source.js" type="text/javascript"></script>
    <script src="js/artDialog/iframeTools.source.js" type="text/javascript"></script>
    
    <style type="text/css">
        .x-panel-body p
        {
            margin: 5px;
        }
        .x-column-layout-ct .x-panel
        {
            margin-bottom: 5px;
        }
        .x-column-layout-ct .x-panel-dd-spacer
        {
            margin-bottom: 5px;
        }
        .settings
        {
            background-image: url(../shared/icons/fam/folder_wrench.png) !important;
        }
        .nav
        {
            background-image: url(../shared/icons/fam/folder_go.png) !important;
        }
        .panel_icon
        {
            background-image: url(images/icons/first.gif);
        }
        .my_icon
        {
            background-image: url(../Controls/images/plugin.gif);
        }
        .x-tree-node div.menu-node
        {
            background: #eee url(cmp-bg.gif) repeat-x;
            margin-top: 1px;
            border-top: 1px solid #ddd;
            border-bottom: 1px solid #ccc;
            padding-top: 2px;
            padding-bottom: 1px;
            font-weight: bold;
        }
        .menu-node .x-tree-node-icon
        {
        }
        .menu-node2
        {
            border: 1px solid #fff;
            background-image: url(../Content/icons/bullet_green.png);
            background-repeat: no-repeat;
            padding-right: 20px;
            background-position: 1px 1px;
        }
        .no-node-icon
        {
            display: none;
        }
        .menu-node2 .x-tree-ec-icon
        {
        }
        .error
        {
            background-image: url(../Content/icons/exclamation.gif);
        }
        .information
        {
            background-image: url(../Content/icons/calendar_view_month.png) !important;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <script type="text/javascript" language="javascript">
        if ((typeof Range !== "undefined") && !Range.prototype.createContextualFragment) {
            Range.prototype.createContextualFragment = function (html) {
                var frag = document.createDocumentFragment(), div = document.createElement("div");
                frag.appendChild(div);
                div.outerHTML = html;
                return frag;
            };
        }
</script>
   <script type="text/javascript">
       function BuildTree() {
           //上面
           var toolbar = new Ext.Toolbar(
    {
        border: false, x: 0, y: 0, id: "toolbars", items: [
        {
            xtype: 'tbbutton', text: "某某办公管理系统", cls: 'x-btn-text-icon', icon: 'Images/icons/house.png',
            disabled: false, disabledClass: ''
        },
        "->",
        {
            xtype: "tbbutton", minWidth: 80, text: "消息  [<span style=\"color: red\" id=\"mailcount\">0</span>]",
            cls: "x-btn-text-icon", icon: "Images/icons/email.png",
            handler: function (btn, e) {
                var tabs = tabpanels;
                for (var i = 0; i < tabs.items.length; i++) {
                    if (tabs.items.items[i].title == "消息") {
                        tabs.activate(tabs.items.items[i]);
                        return;
                    }
                }
                tabs.add(
                {
                    title: '消息', id: "PanelArticleViewID_01", html: "<iframe scrolling='true' width='100%' height='100%'  frameborder='0' src='../general/sms/receive.aspx'></iframe>",
                    closable: true
                });
                tabs.activate('PanelArticleViewID_01');
            }
        },
        "-",
        {
            xtype: "tbbutton", minWidth: 80, text: "日程安排", cls: "x-btn-text-icon", icon: "Images/icons/calendar.png",
            handler: function (btn, e) {
                var tabs = tabpanels;
                for (var i = 0; i < tabs.items.length; i++) {
                    if (tabs.items.items[i].title == "日程安排") {
                        tabs.activate(tabs.items.items[i]);
                        return;
                    }
                }
                tabs.add(
                {
                    title: '日程安排', id: "PanelArticleViewID_02", html: "<iframe scrolling='true' width='100%' height='100%'  frameborder='0' src='fullCalandarTest.aspx'></iframe>",
                    closable: true
                });
                tabs.activate('PanelArticleViewID_02');
            }
        },
        "-",
        {
            xtype: "tbbutton", minWidth: 80, text: "公告通知  [<span style=\"color: red\" id=\"spnOnLineUserCount\">0</span>]",
            cls: "x-btn-text-icon", icon: "Images/icons/user.png",
            handler: function (btn, e) {
                var tabs = tabpanels;
                for (var i = 0; i < tabs.items.length; i++) {
                    if (tabs.items.items[i].title == "公告通知") {
                        tabs.activate(tabs.items.items[i]);
                        return;
                    }
                }
                tabs.add(
                {
                    title: '公告通知', id: "PanelArticleViewID_03", html: "<iframe scrolling='true' width='100%' height='100%'  frameborder='0' src='../general/ipanel/user_online.aspx'></iframe>",
                    closable: true
                });
                tabs.activate('PanelArticleViewID_03');
            }
        },
        "-",
        {
            xtype: "tbbutton", minWidth: 80, text: "控制面板", cls: "x-btn-text-icon", icon: "../Content/icons/key.png",
            handler: function (btn, e) {
                var tabs = tabpanels;
                for (var i = 0; i < tabs.items.length; i++) {
                    if (tabs.items.items[i].title == "控制面板") {
                        tabs.activate(tabs.items.items[i]);
                        return;
                    }
                }
                tabs.add(
                {
                    title: '控制面板', id: "PanelArticleViewID_04", html: "<iframe scrolling='true' width='100%' height='100%'  frameborder='0' src='../general/person_info/index.aspx'></iframe>",
                    closable: true
                });
                tabs.activate('PanelArticleViewID_04');
            }
        },
        "-",
        {
            xtype: "tbbutton", minWidth: 80, text: "注销", cls: "x-btn-text-icon", icon: "Images/icons/lock_go.png",
            handler: function (btn, e) {
                JsHelper.Confirm("您确认要退出系统吗？", function (btn) {
                    if (btn == 'yes') {
                        parent.location = "index.aspx";
                    }
                });
            }
        }]
    });
           var toolbar1 = new Ext.Toolbar(
    {
        border: false, x: 0, y: 0, id: "toolbars1", items: [
        {
            xtype: 'tbbutton', text: '当前用户： <font color="black">admin</font>', cls: 'x-btn-text-icon',
            icon: 'Images/icons/layers.png', disabled: false, disabledClass: ''
        },
        "->", {}]
    });
           var panel_toolbar = new Ext.Panel({
               border: false, x: 0, y: 0, items: [toolbar]
           });
           var panel_north = new Ext.Panel(
    {
        id: "panel_north", region: "north", title: "", border: false, html: '', height: 25, buttonAlign: 'right',
        margin: '0 0 0 0', tbar: toolbar
    });
           //中间
           var tabpanel = new Ext.TabPanel(
    {
        activeTab: 0, autoWidth: true, autoScroll: true, border: true, frame: true, id: "TabPanelID",
        enableTabScroll: true, items: [
        {
            xtype: "panel", layout: 'fit', title: "工作台", border: false, frame: false, iconCls: 'panel_icon',
            html: "<iframe scrolling='true' width='100%' height='100%'  frameborder='0' src='http://www.baidu.com'></iframe>"
        }]
    });
           var panel_center = new Ext.Panel(
    {
        id: 'panleCenter', frame: false, border: false, region: 'center', split: true, items: [tabpanel],
        layout: 'fit'
    });
           //左面
           var panel_west = new Ext.Panel(
    {
        id: 'panWestMenu', region: 'west', title: '功能菜单', iconCls: 'system_icon', width: 180, split: true,
        minSize: 180, maxSize: 250, collapsed: false, collapsible: true, margins: '0 0 0 0', layout: 'accordion',
        layoutConfig: {
            animate: true
        }
    });

    var viewport = new Ext.Viewport({
        id: 'vpMain', layout: 'border', items: [panel_north, panel_center, panel_west, Ext.getCmp("BottomPanelID")]
           });
           //加载左面的数据
           var loadPanelWest = function (init) {
               Ext.Ajax.request(
        {
            url: 'Ajax/MemuTree.ashx?p=root',
            success: function (response, options) {
                try {
                    var panWestMenu = Ext.getCmp("panWestMenu");
                    if (panWestMenu) {
                        var children = panWestMenu.findByType('panel');
                        if (children) {
                            for (var i = 0, len = children.length; i < len; i++) {
                                panWestMenu.remove(children[i], true);
                            }
                        }
                    }

                   // var toolBars1 = Ext.getCmp("toolbars1");
                    var toolBars = Ext.getCmp("toolbars");
                    var menusArray = Ext.util.JSON.decode(response.responseText);
                    for (var j = 0; j < menusArray.length; j++) {
                        var mp = CreateMenuPanel(menusArray[j].TypeTitle, menusArray[j].TypeID, menusArray[j].icon,
                        menusArray[j].iconCls);
                        panWestMenu.add(mp);
//                        if (init == "load") {
//                            var tempBtn = CreteButton(menusArray[j].TypeTitle, menusArray[j].TypeID, menusArray[j].icon);
//                            toolBars1.addItem(tempBtn);
//                        }
                    }
                    panWestMenu.doLayout();
                }
                catch (e) { }
            }
        });
           };
           loadPanelWest("load");
           //创建单个treePanel
           var CreateMenuPanel = function (title, TypeID, icons, iconcls) {
               return new Ext.Panel(
        {
            title: title, layout: 'fit', border: false, iconCls: iconcls, items: [
            {
                xtype: 'treepanel', singleExpand: true, animate: true, autoScroll: true, containerScroll: true,
                border: false, layout: 'fit', rootVisible: false, autoHeight: false, lines: true,
                iconCls: icons, spilt: true, // 美化界面
                width: 180, height: 370, enableDD: false, dropConfig: {
                    appendOnly: true
                },
                loader: new Ext.tree.TreeLoader({
                    dataUrl: "Ajax/MemuTree.ashx"
                }), root: new Ext.tree.AsyncTreeNode({
                    id: TypeID, text: title, draggable: false, scope: this, scripts: true, expanded: true
                }), listeners:
                {
                    "click": function (node, e) {
                        if (node.attributes.action == "") {
                            //Ext.Msg.alert("提示消息","不可以对根节点执行右键操作！");
                            return;
                        }
                        var _Id = node.attributes.id;
                        var _TypeID = node.attributes.TypeID;
                        var _TypeTitle = node.attributes.TypeTitle;
                        var _TypeEName = node.attributes.TypeEName;
                        var action = node.attributes.action;
                        var tabs = Ext.getCmp("TabPanelID");
                        var title = _TypeTitle;
                        for (var i = 0; i < tabs.items.length; i++) {
                            if (tabs.items.items[i].title == title) {
                                //Ext.Msg.alert("消息","该菜单项[ " + node.attributes.text + " ]已经存在Tab里面！");
                                tabs.activate(tabs.items.items[i]);
                                return;
                            }
                        }
                        var pnl = new BuildGridView(_Id, title, action).gridView;
                        tabs.add(pnl);
                        tabs.activate(pnl);
                    }
                }
            }]
        });
           };
           //创建单个按钮
           var CreteButton = function (MenuTitle, MenuID, icons) {
               return new Ext.Toolbar.Button(
        {
            id: MenuID, text: MenuTitle, cls: 'x-btn-text-icon', icon: icons, tooltip: MenuTitle,
            listeners:
            {
                "click": function (o, e) {
                    var panWestMenu = Ext.getCmp('panWestMenu');
                    var toolbars = Ext.getCmp('toolbars1');
                    var panel_north = Ext.getCmp('panel_north');
                    if (toolbars && toolbars.items.length > 0) {
                        for (var i = 0; i < toolbars.items.length; i++) {
                            if (toolbars.items.items[i].id == o.id) {
                                toolbars.items.items[i].pressed = true;
                            }
                            else {
                                toolbars.items.items[i].pressed = false;
                            }
                        }
                    }
                    if (panWestMenu) {
                        var children = panWestMenu.findByType('panel');
                        if (children) {
                            for (var i = 0, len = children.length; i < len; i++) {
                                panWestMenu.remove(children[i], true);
                            }
                        }
                        var mp = CreateMenuPanel(o.tooltip, o.id, o.iconCls);
                        panWestMenu.add(mp);
                        panWestMenu.doLayout();
                    }
                }
            }
        });
           };
       }
       //今日日程提醒窗口
       Ext.ux.ToastWindowMgr = {
           positions: []
       };
       Ext.ux.ToastWindow = Ext.extend(Ext.Window,
{
    initComponent: function () {
        Ext.apply(this,
        {
            iconCls: this.iconCls || 'information', width: 400, height: 280, autoScroll: true, autoDestroy: true,
            plain: false
        });
        this.task = new Ext.util.DelayedTask(this.hide, this);
        Ext.ux.ToastWindow.superclass.initComponent.call(this);
    },
    setMessage: function (msg) {
        this.body.update(msg);
    },
    setTitle: function (title, iconCls) {
        Ext.ux.ToastWindow.superclass.setTitle.call(this, title, iconCls || this.iconCls);
    },
    onRender: function (ct, position) {
        Ext.ux.ToastWindow.superclass.onRender.call(this, ct, position);
    },
    onDestroy: function () {
        Ext.ux.ToastWindowMgr.positions.remove(this.pos);
        Ext.ux.ToastWindow.superclass.onDestroy.call(this);
    },
    afterShow: function () {
        Ext.ux.ToastWindow.superclass.afterShow.call(this);
        this.on('move', function () {
            Ext.ux.ToastWindowMgr.positions.remove(this.pos);
            this.task.cancel();
        }, this);
        this.task.delay(10000);
    },
    animShow: function () {
        this.pos = 0;
        while (Ext.ux.ToastWindowMgr.positions.indexOf(this.pos) > -1) {
            this.pos++;
        }
        Ext.ux.ToastWindowMgr.positions.push(this.pos);
        this.setSize(400, 280);
        this.el.alignTo(document, "br-br", [-20, -20 - ((this.getSize().height + 10) * this.pos)]);
        this.el.slideIn('b', {
            duration: 1, callback: this.afterShow, scope: this
        });
    },
    animHide: function () {
        Ext.ux.ToastWindowMgr.positions.remove(this.pos);
        this.el.ghost("b", {
            duration: 1, remove: true, scope: this, callback: this.destroy
        });
    }
});
       function ready() {
           BuildBottomPanel();
           BuildTree();
           RightKeyTabPanel();
           tabpanels = Ext.getCmp("TabPanelID");
           //    sendRequest();
           //    $(document).everyTime(60000, 'A', function (i) 
           //    {
           //        sendRequest();
           //    });
       }
       Ext.onReady(ready);
 

        </script>
    </div>
    </form>
</body>
</html>
