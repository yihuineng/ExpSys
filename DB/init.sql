/*
Navicat SQL Server Data Transfer

Source Server         : MSSQL@win2008
Source Server Version : 105000
Source Host           : 10.211.55.7:1433
Source Database       : Dev_JcxyOA2016
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2016-11-02 17:18:19
*/


-- ----------------------------
-- Table structure for CGModel
-- ----------------------------
DROP TABLE [dbo].[CGModel]
GO
CREATE TABLE [dbo].[CGModel] (
[id] bigint NOT NULL ,
[modelCode] nvarchar(64) NOT NULL ,
[modelName] nvarchar(512) NULL ,
[modelType] nvarchar(16) NOT NULL ,
[modelPackage] nvarchar(64) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'CGModel', 
'COLUMN', N'modelCode')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'英文代码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'CGModel'
, @level2type = 'COLUMN', @level2name = N'modelCode'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'英文代码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'CGModel'
, @level2type = 'COLUMN', @level2name = N'modelCode'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'CGModel', 
'COLUMN', N'modelName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'中文名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'CGModel'
, @level2type = 'COLUMN', @level2name = N'modelName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'中文名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'CGModel'
, @level2type = 'COLUMN', @level2name = N'modelName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'CGModel', 
'COLUMN', N'modelType')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'类型（表或视图）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'CGModel'
, @level2type = 'COLUMN', @level2name = N'modelType'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'类型（表或视图）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'CGModel'
, @level2type = 'COLUMN', @level2name = N'modelType'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'CGModel', 
'COLUMN', N'modelPackage')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'包名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'CGModel'
, @level2type = 'COLUMN', @level2name = N'modelPackage'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'包名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'CGModel'
, @level2type = 'COLUMN', @level2name = N'modelPackage'
GO

-- ----------------------------
-- Records of CGModel
-- ----------------------------
INSERT INTO [dbo].[CGModel] ([id], [modelCode], [modelName], [modelType], [modelPackage]) VALUES (N'584923157094203392', N'CGModel', N'模型定义', N'Table', N'net.yihuineng.codegen')
GO
GO
INSERT INTO [dbo].[CGModel] ([id], [modelCode], [modelName], [modelType], [modelPackage]) VALUES (N'584923313059397632', N'CGModelField', N'模型属性定义', N'Table', N'net.yihuineng.codegen')
GO
GO
INSERT INTO [dbo].[CGModel] ([id], [modelCode], [modelName], [modelType], [modelPackage]) VALUES (N'585209441532510208', N'PSyncStamp', N'数据同步标记', N'Table', N'net.yihuineng.platform')
GO
GO
INSERT INTO [dbo].[CGModel] ([id], [modelCode], [modelName], [modelType], [modelPackage]) VALUES (N'585210131067699200', N'PSequence', N'平台序列', N'Table', N'net.yihuineng.platform')
GO
GO
INSERT INTO [dbo].[CGModel] ([id], [modelCode], [modelName], [modelType], [modelPackage]) VALUES (N'616136990538072064', N'PRolePermission', N'平台角色权限关联表', N'Table', N'net.yihuineng.platform')
GO
GO
INSERT INTO [dbo].[CGModel] ([id], [modelCode], [modelName], [modelType], [modelPackage]) VALUES (N'616137015192190976', N'PUser', N'平台用户', N'Table', N'net.yihuineng.platform')
GO
GO
INSERT INTO [dbo].[CGModel] ([id], [modelCode], [modelName], [modelType], [modelPackage]) VALUES (N'617588553802579968', N'PRoleAuthz', N'平台角色权限关联表', N'Table', N'net.yihuineng.platform')
GO
GO
INSERT INTO [dbo].[CGModel] ([id], [modelCode], [modelName], [modelType], [modelPackage]) VALUES (N'617589355933859840', N'PPermission', N'平台权限菜单表', N'Table', N'net.yihuineng.platform')
GO
GO
INSERT INTO [dbo].[CGModel] ([id], [modelCode], [modelName], [modelType], [modelPackage]) VALUES (N'617632200275263488', N'PRole', N'平台角色', N'Table', N'net.yihuineng.platform')
GO
GO
INSERT INTO [dbo].[CGModel] ([id], [modelCode], [modelName], [modelType], [modelPackage]) VALUES (N'791200700133539840', N'PUserSettings', N'平台-用户设置', N'Table', N'net.yihuineng.platform')
GO
GO
INSERT INTO [dbo].[CGModel] ([id], [modelCode], [modelName], [modelType], [modelPackage]) VALUES (N'791200834040889344', N'PUserRole', N'平台用户角色关联表', N'Table', N'net.yihuineng.platform')
GO
GO
INSERT INTO [dbo].[CGModel] ([id], [modelCode], [modelName], [modelType], [modelPackage]) VALUES (N'791652675476258816', N'PAPI', N'api信息', N'Table', N'net.yihuineng.app')
GO
GO
INSERT INTO [dbo].[CGModel] ([id], [modelCode], [modelName], [modelType], [modelPackage]) VALUES (N'793688039963492352', N'KM_Q_A', N'Q&A表', N'Table', N'net.yihuineng.project.km')
GO
GO
INSERT INTO [dbo].[CGModel] ([id], [modelCode], [modelName], [modelType], [modelPackage]) VALUES (N'793698312711569408', N'KM_CONFIG', N'知识管理配置', N'Table', N'net.yihuineng.project.km')
GO
GO
INSERT INTO [dbo].[CGModel] ([id], [modelCode], [modelName], [modelType], [modelPackage]) VALUES (N'793699327343067136', N'KM_MD_TEMP', N'markdown模板', N'Table', N'net.yihuineng.project.km')
GO
GO
INSERT INTO [dbo].[CGModel] ([id], [modelCode], [modelName], [modelType], [modelPackage]) VALUES (N'793699969017053184', N'KM_LABLE', N'知识管理标签', N'Table', N'net.yihuineng.project.km')
GO
GO

-- ----------------------------
-- Table structure for CGModelField
-- ----------------------------
DROP TABLE [dbo].[CGModelField]
GO
CREATE TABLE [dbo].[CGModelField] (
[id] bigint NOT NULL ,
[modelCode] nvarchar(64) NOT NULL ,
[fieldCode] nvarchar(64) NOT NULL ,
[fieldName] nvarchar(256) NULL ,
[fieldType] nvarchar(16) NULL ,
[className] nvarchar(16) NULL ,
[pk] bit NOT NULL ,
[notNull] bit NOT NULL ,
[attributes] nvarchar(64) NULL ,
[orderFlag] bigint NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'CGModelField', 
'COLUMN', N'modelCode')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'模型英文代码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'CGModelField'
, @level2type = 'COLUMN', @level2name = N'modelCode'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'模型英文代码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'CGModelField'
, @level2type = 'COLUMN', @level2name = N'modelCode'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'CGModelField', 
'COLUMN', N'fieldCode')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'字段英文代码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'CGModelField'
, @level2type = 'COLUMN', @level2name = N'fieldCode'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'字段英文代码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'CGModelField'
, @level2type = 'COLUMN', @level2name = N'fieldCode'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'CGModelField', 
'COLUMN', N'fieldName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'字段中文名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'CGModelField'
, @level2type = 'COLUMN', @level2name = N'fieldName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'字段中文名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'CGModelField'
, @level2type = 'COLUMN', @level2name = N'fieldName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'CGModelField', 
'COLUMN', N'fieldType')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'统一数据类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'CGModelField'
, @level2type = 'COLUMN', @level2name = N'fieldType'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'统一数据类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'CGModelField'
, @level2type = 'COLUMN', @level2name = N'fieldType'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'CGModelField', 
'COLUMN', N'className')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'Java映射类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'CGModelField'
, @level2type = 'COLUMN', @level2name = N'className'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Java映射类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'CGModelField'
, @level2type = 'COLUMN', @level2name = N'className'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'CGModelField', 
'COLUMN', N'pk')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'CGModelField'
, @level2type = 'COLUMN', @level2name = N'pk'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'CGModelField'
, @level2type = 'COLUMN', @level2name = N'pk'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'CGModelField', 
'COLUMN', N'notNull')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否非空'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'CGModelField'
, @level2type = 'COLUMN', @level2name = N'notNull'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否非空'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'CGModelField'
, @level2type = 'COLUMN', @level2name = N'notNull'
GO

-- ----------------------------
-- Records of CGModelField
-- ----------------------------
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'585209442534948864', N'PSyncStamp', N'syncName', null, N'varchar(200)', N'String', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'585209442572697600', N'PSyncStamp', N'lastSyncTime', null, N'datetime', N'Date', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'616136990563237888', N'PRolePermission', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'616136990575820800', N'PRolePermission', N'roleId', null, N'bigint', N'long', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'616136990580015104', N'PRolePermission', N'permissionId', null, N'bigint', N'long', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'616136990584209408', N'PRolePermission', N'addTime', null, N'datetime', N'Date', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'616136990588403712', N'PRolePermission', N'addUser', null, N'varchar(64)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'616136990592598016', N'PRolePermission', N'modifyTime', null, N'datetime', N'Date', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'616136990596792320', N'PRolePermission', N'modifyUser', null, N'varchar(64)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620062986630856704', N'PUserRole', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620062986639245312', N'PUserRole', N'userCode', null, N'varchar(null)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620062986647633920', N'PUserRole', N'roleCode', null, N'varchar(null)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620062986656022528', N'PUserRole', N'addTime', null, N'datetime', N'Date', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620062986660216832', N'PUserRole', N'addUser', null, N'varchar(null)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620062986668605440', N'PUserRole', N'modifyTime', null, N'datetime', N'Date', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620062986672799744', N'PUserRole', N'modifyUser', null, N'varchar(null)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620062994201575424', N'PSequence', N'seqName', null, N'varchar(null)', N'String', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620062994239324160', N'PSequence', N'nextVal', null, N'bigint', N'long', N'0', N'1', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063001101205504', N'PRoleAuthz', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063001113788416', N'PRoleAuthz', N'roleCode', null, N'varchar(null)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063001122177024', N'PRoleAuthz', N'authzCode', null, N'varchar(null)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063001164120064', N'PRoleAuthz', N'addTime', null, N'datetime', N'Date', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063001168314368', N'PRoleAuthz', N'addUser', null, N'varchar(null)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063001176702976', N'PRoleAuthz', N'modifyTime', null, N'datetime', N'Date', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063001185091584', N'PRoleAuthz', N'modifyUser', null, N'varchar(null)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063007740788736', N'PRole', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063007749177344', N'PRole', N'parentId', null, N'bigint', N'long', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063007753371648', N'PRole', N'innerCode', null, N'varchar(null)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063007765954560', N'PRole', N'isLeaf', null, N'bit', N'boolean', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063007774343168', N'PRole', N'roleCode', null, N'varchar(null)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063007782731776', N'PRole', N'roleName', null, N'varchar(null)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063007786926080', N'PRole', N'memo', null, N'varchar(null)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063007795314688', N'PRole', N'addUser', null, N'varchar(null)', N'String', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063007803703296', N'PRole', N'addTime', null, N'datetime', N'Date', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063007812091904', N'PRole', N'modifyUser', null, N'varchar(null)', N'String', N'0', N'0', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063007816286208', N'PRole', N'modifyTime', null, N'datetime', N'Date', N'0', N'0', null, N'12')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063014309068800', N'PPermission', N'id', null, N'bigint', N'long', N'0', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063014317457408', N'PPermission', N'parentId', null, N'bigint', N'long', N'0', N'1', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063014325846016', N'PPermission', N'innerCode', null, N'varchar(null)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063014334234624', N'PPermission', N'permissionCode', null, N'varchar(null)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063014342623232', N'PPermission', N'permissionName', null, N'varchar(null)', N'String', N'0', N'1', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063014351011840', N'PPermission', N'type', null, N'varchar(null)', N'String', N'0', N'1', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063014359400448', N'PPermission', N'url', null, N'varchar(null)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063014363594752', N'PPermission', N'icon', null, N'varchar(null)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063014371983360', N'PPermission', N'moreAuthzValue', null, N'varchar(null)', N'String', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063014376177664', N'PPermission', N'memo', null, N'varchar(null)', N'String', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063014384566272', N'PPermission', N'visiable', null, N'bit', N'boolean', N'0', N'1', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063014388760576', N'PPermission', N'isLeaf', null, N'bit', N'boolean', N'0', N'1', null, N'12')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063014392954880', N'PPermission', N'orderFlag', null, N'bigint', N'long', N'0', N'1', null, N'13')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063014401343488', N'PPermission', N'addUser', null, N'varchar(null)', N'String', N'0', N'1', null, N'14')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063014405537792', N'PPermission', N'addTime', null, N'datetime', N'Date', N'0', N'1', null, N'15')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063014413926400', N'PPermission', N'modifyUser', null, N'varchar(null)', N'String', N'0', N'0', null, N'16')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063014426509312', N'PPermission', N'modifyTime', null, N'datetime', N'Date', N'0', N'0', null, N'17')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063029093990400', N'PGroupMember', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063029102379008', N'PGroupMember', N'groupCode', null, N'varchar(null)', N'String', N'0', N'1', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063029114961920', N'PGroupMember', N'memberType', null, N'varchar(null)', N'String', N'0', N'1', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063029123350528', N'PGroupMember', N'contactCardId', null, N'bigint', N'long', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063029131739136', N'PGroupMember', N'userCode', null, N'varchar(null)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063029140127744', N'PGroupMember', N'orderFlag', null, N'bigint', N'long', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063029148516352', N'PGroupMember', N'addTime', null, N'datetime', N'Date', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063029156904960', N'PGroupMember', N'addUser', null, N'varchar(null)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063029165293568', N'PGroupMember', N'modifyTime', null, N'datetime', N'Date', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063029173682176', N'PGroupMember', N'modifyUser', null, N'varchar(null)', N'String', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063029186265088', N'PGroupMember', N'prevMemberId', null, N'varchar(null)', N'String', N'0', N'0', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063036111060992', N'PGroup', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063036127838208', N'PGroup', N'parentId', null, N'bigint', N'long', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063036136226816', N'PGroup', N'innerCode', null, N'varchar(null)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063036140421120', N'PGroup', N'groupCode', null, N'varchar(null)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063036148809728', N'PGroup', N'groupName', null, N'varchar(null)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063036153004032', N'PGroup', N'groupType', null, N'varchar(null)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063036161392640', N'PGroup', N'branchType', null, N'varchar(null)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063036169781248', N'PGroup', N'branchLeader1', null, N'varchar(null)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063036173975552', N'PGroup', N'branchLeader2', null, N'varchar(null)', N'String', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063036178169856', N'PGroup', N'orderFlag', null, N'bigint', N'long', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063036186558464', N'PGroup', N'treeLevel', null, N'bigint', N'long', N'0', N'0', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063036190752768', N'PGroup', N'isLeaf', null, N'bit', N'boolean', N'0', N'0', null, N'12')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063036199141376', N'PGroup', N'branchCode', null, N'varchar(null)', N'String', N'0', N'0', null, N'13')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063036203335680', N'PGroup', N'addTime', null, N'datetime', N'Date', N'0', N'0', null, N'14')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063036211724288', N'PGroup', N'addUser', null, N'varchar(null)', N'String', N'0', N'0', null, N'15')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063036220112896', N'PGroup', N'modifyTime', null, N'datetime', N'Date', N'0', N'0', null, N'16')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063036224307200', N'PGroup', N'modifyUser', null, N'varchar(null)', N'String', N'0', N'0', null, N'17')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063092528644096', N'CGModel', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063092574781440', N'CGModel', N'modelCode', N'英文代码', N'varchar(null)', N'String', N'0', N'1', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063092599947264', N'CGModel', N'modelName', N'中文名称', N'varchar(null)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063092650278912', N'CGModel', N'modelType', N'类型（表或视图）', N'varchar(null)', N'String', N'0', N'1', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063092675444736', N'CGModel', N'modelPackage', N'包名', N'varchar(null)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063100527181824', N'CGModelField', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063100573319168', N'CGModelField', N'modelCode', N'模型英文代码', N'varchar(null)', N'String', N'0', N'1', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063100585902080', N'CGModelField', N'fieldCode', N'字段英文代码', N'varchar(null)', N'String', N'0', N'1', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063100594290688', N'CGModelField', N'fieldName', N'字段中文名称', N'varchar(null)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063100602679296', N'CGModelField', N'fieldType', N'统一数据类型', N'varchar(null)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063100606873600', N'CGModelField', N'className', N'Java映射类型', N'varchar(null)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063100615262208', N'CGModelField', N'pk', N'是否主键', N'bit', N'boolean', N'0', N'1', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063100619456512', N'CGModelField', N'notNull', N'是否非空', N'bit', N'boolean', N'0', N'1', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063100627845120', N'CGModelField', N'attributes', null, N'varchar(null)', N'String', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063100636233728', N'CGModelField', N'orderFlag', null, N'bigint', N'long', N'0', N'1', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'647339603937722368', N'PCode', N'codeType', null, N'varchar(64)', N'String', N'0', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'647339604139048960', N'PCode', N'parentCode', null, N'varchar(64)', N'String', N'0', N'1', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'647339604214546432', N'PCode', N'codeValue', null, N'varchar(64)', N'String', N'0', N'1', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'647339604285849600', N'PCode', N'codeName', null, N'varchar(64)', N'String', N'0', N'1', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'647339604382318592', N'PCode', N'orderFlag', null, N'bigint', N'long', N'0', N'1', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'647339604457816064', N'PCode', N'memo', null, N'varchar(64)', N'String', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'647339604533313536', N'PCode', N'addTime', null, N'datetime', N'Date', N'0', N'1', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'647339604604616704', N'PCode', N'addUser', null, N'varchar(64)', N'String', N'0', N'1', null, N'12')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'647339604671725568', N'PCode', N'modifyTime', null, N'datetime', N'Date', N'0', N'0', null, N'13')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'647339604743028736', N'PCode', N'modifyUser', null, N'varchar(64)', N'String', N'0', N'0', null, N'14')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'664050862993178624', N'PUserSettings', N'userCode', null, N'varchar(64)', N'String', N'0', N'0', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'664050863160950784', N'PUserSettings', N'configName', null, N'varchar(64)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'664050863240642560', N'PUserSettings', N'configValue', null, N'text', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766157482643947520', N'PUser', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766157482937548800', N'PUser', N'userCode', null, N'varchar(64)', N'String', N'0', N'1', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766157483013046272', N'PUser', N'userName', null, N'varchar(200)', N'String', N'0', N'1', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766157483088543744', N'PUser', N'realName', null, N'varchar(200)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766157483130486784', N'PUser', N'password', null, N'varchar(100)', N'String', N'0', N'1', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766157483176624128', N'PUser', N'branchGroupCode', null, N'varchar(64)', N'String', N'0', N'1', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766157483239538688', N'PUser', N'isBranchAdmin', null, N'bit', N'boolean', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766157483319230464', N'PUser', N'isEnable', null, N'bit', N'boolean', N'0', N'1', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766157483369562112', N'PUser', N'type', null, N'varchar(20)', N'String', N'0', N'1', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766157483440865280', N'PUser', N'email', null, N'varchar(100)', N'String', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766157483512168448', N'PUser', N'mobile', null, N'varchar(50)', N'String', N'0', N'0', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766157483566694400', N'PUser', N'lastLoginTime', null, N'datetime', N'Date', N'0', N'0', null, N'12')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766157483604443136', N'PUser', N'lastLoginIp', null, N'varchar(50)', N'String', N'0', N'0', null, N'13')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766157483705106432', N'PUser', N'addTime', null, N'datetime', N'Date', N'0', N'1', null, N'14')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766157483768020992', N'PUser', N'addUser', null, N'varchar(64)', N'String', N'0', N'1', null, N'15')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766157483826741248', N'PUser', N'modifyTime', null, N'datetime', N'Date', N'0', N'0', null, N'16')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766157483885461504', N'PUser', N'modifyUser', null, N'varchar(64)', N'String', N'0', N'0', null, N'17')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766157483944181760', N'PUser', N'portrait', null, N'varchar(256)', N'String', N'0', N'0', null, N'18')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766157483998707712', N'PUser', N'StudentNumber', N'学号', N'varchar(256)', N'String', N'0', N'0', null, N'19')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766157484061622272', N'PUser', N'nickname', N'昵称', N'varchar(100)', N'String', N'0', N'0', null, N'21')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'791652861707550720', N'PAPI', N'id', N'编号', N'bigint', N'long', N'1', N'1', N'', N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'791817115811184640', N'PAPI', N'apiName', N'api名称', N'varchar(256)', N'String', N'0', N'0', N'', N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'791817410851110912', N'PAPI', N'apiUrl', N'api地址', N'varchar(1024)', N'String', N'0', N'0', N'', N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'791819623346470912', N'PAPI', N'apiParams', N'api入参', N'varchar(1024)', N'String', N'0', N'0', N'', N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'791820317617029120', N'PAPI', N'apiReturn', N'api返回', N'varchar(1024)', N'String', N'0', N'0', N'', N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'791820650372136960', N'PAPI', N'isEnable', N'是否启用', N'bit', N'boolean', N'0', N'0', N'', N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'792917253338169344', N'PAPI', N'project', N'所属项目', N'varchar(64)', N'String', N'0', N'0', N'', N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'792917608776073216', N'PAPI', N'addUser', N'添加人', N'varchar(16)', N'String', N'0', N'0', N'', N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'792917634751397888', N'PAPI', N'addTime', N'添加时间', N'datetime', N'Date', N'0', N'0', N'', N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'793702692215062528', N'KM_CONFIG', N'ID', N'编号', N'bigint', N'long', N'1', N'1', N'', N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'793703650277982208', N'KM_CONFIG', N'CKey', N'键', N'varchar(256)', N'String', N'0', N'0', N'', N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'793703721157525504', N'KM_CONFIG', N'CValue', N'值', N'varchar(256)', N'String', N'0', N'0', N'', N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'793703806536777728', N'KM_CONFIG', N'Memo', N'备注', N'varchar(1024)', N'String', N'0', N'0', N'', N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'793704132186734592', N'KM_LABLE', N'ID', N'编号', N'bigint', N'long', N'1', N'1', N'', N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'793705162404265984', N'KM_LABLE', N'LableName', N'名称', N'varchar(64)', N'String', N'0', N'0', N'', N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'793705592790188032', N'KM_LABLE', N'FLables', N'直系父标签', N'varchar(1024)', N'String', N'0', N'0', N'', N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'793706441729900544', N'KM_MD_TEMP', N'ID', N'编号', N'bigint', N'long', N'1', N'1', N'', N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'793707793910595584', N'KM_MD_TEMP', N'TName', N'模板名称', N'varchar(64)', N'String', N'0', N'0', N'', N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'793707949531856896', N'KM_MD_TEMP', N'TContent', N'模板内容', N'varchar(max)', N'String', N'0', N'0', N'', N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'793708065252704256', N'KM_MD_TEMP', N'Memo', N'备注', N'varchar(256)', N'String', N'0', N'0', N'', N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'793708200095383552', N'KM_Q_A', N'ID', N'编号', N'bigint', N'long', N'1', N'1', N'', N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'793710297868140544', N'KM_Q_A', N'QContent', N'问题', N'varchar(max)', N'String', N'0', N'0', N'', N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'793710357129461760', N'KM_Q_A', N'AContent', N'答案', N'varchar(max)', N'String', N'0', N'0', N'', N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'793710499198926848', N'KM_Q_A', N'QLables', N'问题标签', N'varchar(max)', N'String', N'0', N'0', N'', N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'793710603737759744', N'KM_Q_A', N'AddTime', N'添加时间', N'datetime', N'Date', N'0', N'0', N'', N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'793710678266347520', N'KM_Q_A', N'AddUser', N'添加用户', N'varchar(16)', N'String', N'0', N'0', N'', N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'793733131059331072', N'KM_Q_A', N'IsStable', N'是否稳定', N'bit', N'boolean', N'0', N'0', N'', N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'793733403768782848', N'KM_Q_A', N'EditTime', N'修改时间', N'datetime', N'Date', N'0', N'0', N'', N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'793734008918769664', N'KM_Q_A', N'EditUser', N'修改用户', N'varchar(16)', N'String', N'0', N'0', N'', N'9')
GO
GO

-- ----------------------------
-- Table structure for KM_CONFIG
-- ----------------------------
DROP TABLE [dbo].[KM_CONFIG]
GO
CREATE TABLE [dbo].[KM_CONFIG] (
[ID] bigint NOT NULL ,
[CKey] varchar(256) NULL ,
[CValue] varchar(256) NULL ,
[Memo] varchar(1024) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'KM_CONFIG', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'知识管理配置'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_CONFIG'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'知识管理配置'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_CONFIG'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'KM_CONFIG', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_CONFIG'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_CONFIG'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'KM_CONFIG', 
'COLUMN', N'CKey')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_CONFIG'
, @level2type = 'COLUMN', @level2name = N'CKey'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_CONFIG'
, @level2type = 'COLUMN', @level2name = N'CKey'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'KM_CONFIG', 
'COLUMN', N'CValue')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'值'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_CONFIG'
, @level2type = 'COLUMN', @level2name = N'CValue'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'值'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_CONFIG'
, @level2type = 'COLUMN', @level2name = N'CValue'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'KM_CONFIG', 
'COLUMN', N'Memo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_CONFIG'
, @level2type = 'COLUMN', @level2name = N'Memo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_CONFIG'
, @level2type = 'COLUMN', @level2name = N'Memo'
GO

-- ----------------------------
-- Records of KM_CONFIG
-- ----------------------------

-- ----------------------------
-- Table structure for KM_LABLE
-- ----------------------------
DROP TABLE [dbo].[KM_LABLE]
GO
CREATE TABLE [dbo].[KM_LABLE] (
[ID] bigint NOT NULL ,
[LableName] varchar(64) NULL ,
[FLables] varchar(1024) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'KM_LABLE', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'知识管理标签'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_LABLE'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'知识管理标签'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_LABLE'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'KM_LABLE', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_LABLE'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_LABLE'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'KM_LABLE', 
'COLUMN', N'LableName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_LABLE'
, @level2type = 'COLUMN', @level2name = N'LableName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_LABLE'
, @level2type = 'COLUMN', @level2name = N'LableName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'KM_LABLE', 
'COLUMN', N'FLables')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'直系父标签'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_LABLE'
, @level2type = 'COLUMN', @level2name = N'FLables'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'直系父标签'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_LABLE'
, @level2type = 'COLUMN', @level2name = N'FLables'
GO

-- ----------------------------
-- Records of KM_LABLE
-- ----------------------------

-- ----------------------------
-- Table structure for KM_MD_TEMP
-- ----------------------------
DROP TABLE [dbo].[KM_MD_TEMP]
GO
CREATE TABLE [dbo].[KM_MD_TEMP] (
[ID] bigint NOT NULL ,
[TName] varchar(64) NULL ,
[TContent] varchar(MAX) NULL ,
[Memo] varchar(256) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'KM_MD_TEMP', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'markdown模板'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_MD_TEMP'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'markdown模板'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_MD_TEMP'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'KM_MD_TEMP', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_MD_TEMP'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_MD_TEMP'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'KM_MD_TEMP', 
'COLUMN', N'TName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'模板名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_MD_TEMP'
, @level2type = 'COLUMN', @level2name = N'TName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'模板名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_MD_TEMP'
, @level2type = 'COLUMN', @level2name = N'TName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'KM_MD_TEMP', 
'COLUMN', N'TContent')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'模板内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_MD_TEMP'
, @level2type = 'COLUMN', @level2name = N'TContent'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'模板内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_MD_TEMP'
, @level2type = 'COLUMN', @level2name = N'TContent'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'KM_MD_TEMP', 
'COLUMN', N'Memo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_MD_TEMP'
, @level2type = 'COLUMN', @level2name = N'Memo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_MD_TEMP'
, @level2type = 'COLUMN', @level2name = N'Memo'
GO

-- ----------------------------
-- Records of KM_MD_TEMP
-- ----------------------------

-- ----------------------------
-- Table structure for KM_Q_A
-- ----------------------------
DROP TABLE [dbo].[KM_Q_A]
GO
CREATE TABLE [dbo].[KM_Q_A] (
[ID] bigint NOT NULL ,
[QContent] varchar(MAX) NULL ,
[AContent] varchar(MAX) NULL ,
[QLables] varchar(MAX) NULL ,
[AddTime] datetime NULL ,
[AddUser] varchar(16) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'KM_Q_A', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'Q&A表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_Q_A'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Q&A表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_Q_A'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'KM_Q_A', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_Q_A'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_Q_A'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'KM_Q_A', 
'COLUMN', N'QContent')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'问题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_Q_A'
, @level2type = 'COLUMN', @level2name = N'QContent'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'问题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_Q_A'
, @level2type = 'COLUMN', @level2name = N'QContent'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'KM_Q_A', 
'COLUMN', N'AContent')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'答案'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_Q_A'
, @level2type = 'COLUMN', @level2name = N'AContent'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'答案'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_Q_A'
, @level2type = 'COLUMN', @level2name = N'AContent'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'KM_Q_A', 
'COLUMN', N'QLables')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'问题标签'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_Q_A'
, @level2type = 'COLUMN', @level2name = N'QLables'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'问题标签'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_Q_A'
, @level2type = 'COLUMN', @level2name = N'QLables'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'KM_Q_A', 
'COLUMN', N'AddTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'添加时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_Q_A'
, @level2type = 'COLUMN', @level2name = N'AddTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'添加时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_Q_A'
, @level2type = 'COLUMN', @level2name = N'AddTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'KM_Q_A', 
'COLUMN', N'AddUser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'添加用户'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_Q_A'
, @level2type = 'COLUMN', @level2name = N'AddUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'添加用户'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'KM_Q_A'
, @level2type = 'COLUMN', @level2name = N'AddUser'
GO

-- ----------------------------
-- Records of KM_Q_A
-- ----------------------------

-- ----------------------------
-- Table structure for PAPI
-- ----------------------------
DROP TABLE [dbo].[PAPI]
GO
CREATE TABLE [dbo].[PAPI] (
[id] bigint NOT NULL ,
[apiName] varchar(256) NULL ,
[apiUrl] varchar(1024) NULL ,
[apiParams] varchar(1024) NULL ,
[apiReturn] varchar(1024) NULL ,
[isEnable] bit NULL ,
[project] varchar(64) NULL ,
[addUser] varchar(16) NULL ,
[addTime] datetime NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PAPI', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'api信息'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PAPI'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'api信息'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PAPI'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PAPI', 
'COLUMN', N'id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PAPI'
, @level2type = 'COLUMN', @level2name = N'id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PAPI'
, @level2type = 'COLUMN', @level2name = N'id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PAPI', 
'COLUMN', N'apiName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'api名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PAPI'
, @level2type = 'COLUMN', @level2name = N'apiName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'api名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PAPI'
, @level2type = 'COLUMN', @level2name = N'apiName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PAPI', 
'COLUMN', N'apiUrl')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'api地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PAPI'
, @level2type = 'COLUMN', @level2name = N'apiUrl'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'api地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PAPI'
, @level2type = 'COLUMN', @level2name = N'apiUrl'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PAPI', 
'COLUMN', N'apiParams')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'api入参'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PAPI'
, @level2type = 'COLUMN', @level2name = N'apiParams'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'api入参'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PAPI'
, @level2type = 'COLUMN', @level2name = N'apiParams'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PAPI', 
'COLUMN', N'apiReturn')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'api返回'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PAPI'
, @level2type = 'COLUMN', @level2name = N'apiReturn'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'api返回'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PAPI'
, @level2type = 'COLUMN', @level2name = N'apiReturn'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PAPI', 
'COLUMN', N'isEnable')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否启用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PAPI'
, @level2type = 'COLUMN', @level2name = N'isEnable'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否启用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PAPI'
, @level2type = 'COLUMN', @level2name = N'isEnable'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PAPI', 
'COLUMN', N'project')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'所属项目'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PAPI'
, @level2type = 'COLUMN', @level2name = N'project'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'所属项目'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PAPI'
, @level2type = 'COLUMN', @level2name = N'project'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PAPI', 
'COLUMN', N'addUser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'添加人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PAPI'
, @level2type = 'COLUMN', @level2name = N'addUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'添加人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PAPI'
, @level2type = 'COLUMN', @level2name = N'addUser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PAPI', 
'COLUMN', N'addTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'添加时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PAPI'
, @level2type = 'COLUMN', @level2name = N'addTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'添加时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PAPI'
, @level2type = 'COLUMN', @level2name = N'addTime'
GO

-- ----------------------------
-- Records of PAPI
-- ----------------------------
INSERT INTO [dbo].[PAPI] ([id], [apiName], [apiUrl], [apiParams], [apiReturn], [isEnable], [project], [addUser], [addTime]) VALUES (N'793644171909922816', N'保存Q&A', N'post:/api/km/doSave', N'string QContent-string AContent-string QLables-boolean IsStable-bigint id', N'success/false', N'0', N'km', N'admin', N'2016-11-02 00:00:00.000')
GO
GO
INSERT INTO [dbo].[PAPI] ([id], [apiName], [apiUrl], [apiParams], [apiReturn], [isEnable], [project], [addUser], [addTime]) VALUES (N'793724701967908864', N'查询QA列表(页)', N'get:/api/km/getList', N'string KeyWord-string SLabels-string-int pageIndex-int pageRowCount-boolean IsStable', N'//TODO json pageInfo', N'0', N'km', N'admin', N'2016-11-02 00:00:00.000')
GO
GO
INSERT INTO [dbo].[PAPI] ([id], [apiName], [apiUrl], [apiParams], [apiReturn], [isEnable], [project], [addUser], [addTime]) VALUES (N'793731038403624960', N'获得Q&A详情', N'get:/api/km/detail', N'bigint id', N'//TODO json', N'0', N'km', N'admin', N'2016-11-02 00:00:00.000')
GO
GO
INSERT INTO [dbo].[PAPI] ([id], [apiName], [apiUrl], [apiParams], [apiReturn], [isEnable], [project], [addUser], [addTime]) VALUES (N'793736829957308416', N'获得现有标签列表', N'get:/api/km/getAllLable', N'null', N'//', N'0', N'km', N'admin', N'2016-11-02 00:00:00.000')
GO
GO
INSERT INTO [dbo].[PAPI] ([id], [apiName], [apiUrl], [apiParams], [apiReturn], [isEnable], [project], [addUser], [addTime]) VALUES (N'793738280448294912', N'删除Q&A', N'post:/api/km/doDelete', N'bigint id', N'//', N'0', N'km', N'admin', N'2016-11-02 00:00:00.000')
GO
GO
INSERT INTO [dbo].[PAPI] ([id], [apiName], [apiUrl], [apiParams], [apiReturn], [isEnable], [project], [addUser], [addTime]) VALUES (N'793738744287985664', N'清理无用标签', N'get:/api/km/cleanLable', N'null', N'//', N'0', N'km', N'admin', N'2016-11-02 00:00:00.000')
GO
GO
INSERT INTO [dbo].[PAPI] ([id], [apiName], [apiUrl], [apiParams], [apiReturn], [isEnable], [project], [addUser], [addTime]) VALUES (N'793743547269382144', N'添加MD模板', N'post:/api/km/addTemp', N'String TempName-String TempContent', N'success/false', N'0', N'km', N'admin', N'2016-11-02 00:00:00.000')
GO
GO
INSERT INTO [dbo].[PAPI] ([id], [apiName], [apiUrl], [apiParams], [apiReturn], [isEnable], [project], [addUser], [addTime]) VALUES (N'793743745882259456', N'删除MD模板', N'post:/api/km/delTemp', N'bigint id', N'success/false', N'0', N'km', N'admin', N'2016-11-02 00:00:00.000')
GO
GO
INSERT INTO [dbo].[PAPI] ([id], [apiName], [apiUrl], [apiParams], [apiReturn], [isEnable], [project], [addUser], [addTime]) VALUES (N'793743917089554432', N'获得MD模板', N'get:/api/km/getTemp', N'bigint id', N'//TempContent', N'0', N'km', N'admin', N'2016-11-02 00:00:00.000')
GO
GO

-- ----------------------------
-- Table structure for PCode
-- ----------------------------
DROP TABLE [dbo].[PCode]
GO
CREATE TABLE [dbo].[PCode] (
[codeType] varchar(64) NOT NULL ,
[parentCode] varchar(64) NOT NULL ,
[codeValue] varchar(64) NOT NULL ,
[codeName] varchar(64) NOT NULL ,
[orderFlag] bigint NOT NULL ,
[memo] varchar(64) NULL ,
[addTime] datetime NOT NULL ,
[addUser] varchar(64) NOT NULL ,
[modifyTime] datetime NULL ,
[modifyUser] varchar(64) NULL 
)


GO

-- ----------------------------
-- Records of PCode
-- ----------------------------

-- ----------------------------
-- Table structure for PPermission
-- ----------------------------
DROP TABLE [dbo].[PPermission]
GO
CREATE TABLE [dbo].[PPermission] (
[id] bigint NOT NULL ,
[parentId] bigint NOT NULL ,
[innerCode] nvarchar(1000) NULL ,
[permissionCode] nvarchar(64) NULL ,
[permissionName] nvarchar(64) NOT NULL ,
[type] nvarchar(20) NOT NULL ,
[url] nvarchar(200) NULL ,
[icon] nvarchar(40) NULL ,
[moreAuthzValue] nvarchar(1000) NULL ,
[memo] nvarchar(500) NULL ,
[visiable] bit NOT NULL ,
[isLeaf] bit NOT NULL ,
[orderFlag] bigint NOT NULL ,
[addUser] nvarchar(64) NOT NULL ,
[addTime] datetime NOT NULL ,
[modifyUser] nvarchar(64) NULL ,
[modifyTime] datetime NULL 
)


GO

-- ----------------------------
-- Records of PPermission
-- ----------------------------
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'612820732337979392', N'0', N'0002', N'platform', N'用户及资源管理', N'group', N'', N'icon-applications-blue', N'', N'', N'1', N'1', N'1434942822922', N'admin', N'2015-06-22 11:13:42.920', N'admin', N'2016-10-26 00:00:00.000')
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'612823435281694720', N'612820732337979392', N'00020005', N'platform.permission', N'资源管理', N'menu', N'platform/permission/', N'icon-ui-menu-blue', null, N'', N'1', N'1', N'1434943467359', N'admin', N'2015-06-22 11:24:27.360', N'admin', N'2015-07-03 15:39:53.860')
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'612825152308117504', N'0', N'0006', N'codegen', N'开发平台', N'group', N'', N'icon-applications-blue', null, N'', N'1', N'1', N'1434943876728', N'admin', N'2015-06-22 11:31:16.720', N'admin', N'2015-07-03 15:40:39.717')
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'612826047431311360', N'612825152308117504', N'00060007', N'codegen.model', N'模型管理', N'menu', N'codegen/model/', N'icon-database', null, N'', N'1', N'1', N'1434944090129', N'admin', N'2015-06-22 11:34:50.130', N'admin', N'2016-10-28 00:00:00.000')
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'612826354634719232', N'612825152308117504', N'00060008', N'codegen.iconIndex', N'图标索引', N'menu', N'assets/easyui-ext/iconIndex.html', N'icon-flag-blue', null, N'', N'1', N'1', N'1434944163372', N'admin', N'2015-06-22 11:36:03.373', N'admin', N'2016-08-03 17:35:24.587')
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'612965943705862144', N'612820732337979392', N'0002000c', N'platform.user', N'用户管理', N'menu', N'platform/user/', N'icon-user', null, N'', N'1', N'1', N'1434943467360', N'admin', N'2015-06-22 20:50:44.043', N'admin', N'2015-07-03 15:39:45.397')
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'616874825780035584', N'612820732337979392', N'00020001', N'platform.role', N'角色管理', N'menu', N'platform/role/', N'icon-lock', null, N'', N'1', N'1', N'1434943467361', N'admin', N'2015-07-03 15:43:14.143', N'admin', N'2015-07-06 01:00:57.930')
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'620956411240644608', N'612825152308117504', N'00060005', N'codegen.druid', N'数据库连接池监控', N'menu', N'druid/index.html', N'icon-dashboard', null, N'', N'1', N'1', N'1436882520638', N'admin', N'2015-07-14 22:02:00.637', N'admin', N'2015-07-14 22:03:40.943')
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'639624373753348096', N'617896303703097344', N'00010006', N'bpm.desktop.startlist', N'流程启动', N'menu', N'bpm/desktop/startList', N'', null, N'', N'1', N'1', N'1441333309055', N'admin', N'2015-09-04 10:21:49.053', null, null)
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'641445234076549120', N'617896303703097344', N'00010007', N'bpm.desktop.todolist', N'我的待办', N'menu', N'bpm/desktop/todoList', N'', null, N'', N'1', N'1', N'1441767435976', N'admin', N'2015-09-09 10:57:15.977', null, null)
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'641445963231133696', N'617896303703097344', N'00010008', N'bpm.desktop.donelist', N'我的已办', N'menu', N'bpm/desktop/doneList', N'', null, N'', N'1', N'1', N'1441767609793', N'admin', N'2015-09-09 11:00:09.793', null, null)
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'641448776812199936', N'617896303703097344', N'00010009', N'bpm.desktop.mydoclist', N'我的主办', N'menu', N'bpm/desktop/myDocList', N'', null, N'', N'1', N'1', N'1441768280609', N'admin', N'2015-09-09 11:11:20.610', null, null)
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'641449029791645696', N'617896303703097344', N'0001000a', N'bpm.desktop.enddoclist', N'已办结的', N'menu', N'bpm/desktop/endDocList', N'', null, N'', N'1', N'1', N'1441768340916', N'admin', N'2015-09-09 11:12:20.917', null, null)
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'641449165468991488', N'617896303703097344', N'0001000b', N'bpm.desktop.favoritelist', N'我的收藏', N'menu', N'bpm/desktop/favoriteList', N'', null, N'', N'1', N'1', N'1441768373270', N'admin', N'2015-09-09 11:12:53.270', null, null)
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'657360461393559552', N'657360259542679552', N'00060007', N'oa.noticeSend.index', N'通知发布', N'menu', N'oa/noticeSend/', N'', null, N'', N'1', N'1', N'1445561922009', N'admin', N'2015-10-23 08:58:42.010', N'admin', N'2015-10-23 17:46:26.573')
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'657493068693372928', N'657360259542679552', N'0006000b', N'oa.noticeReceive.index', N'通知签收', N'menu', N'oa/noticeReceive/index', N'', null, N'', N'1', N'1', N'1445593537911', N'admin', N'2015-10-23 17:45:37.910', N'admin', N'2015-10-23 17:47:52.027')
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'754949265528193024', N'747680247184359424', N'000w000y000w', N'lbwh', N'类别维护', N'menu', N'blank.html', N'', null, N'', N'1', N'1', N'1468828905882', N'admin', N'2016-07-18 16:01:45.883', null, null)
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'756019394085126144', N'756018855557464064', N'00430044', N'project.jcxywc.basicInfo.student', N'新生信息', N'menu', N'project/jcxywc/basicInfo/studentInfo/', N'', null, N'', N'1', N'1', N'1469084044523', N'admin', N'2016-07-21 14:54:04.523', N'admin', N'2016-07-22 13:33:16.030')
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'756364870215008256', N'756018855557464064', N'00430045', N'project.jcxywc.basicInfo.teacher', N'教师信息', N'menu', N'project/jcxywc/basicInfo/teacherInfo/', N'', null, N'', N'1', N'1', N'1469166412400', N'admin', N'2016-07-22 13:46:52.400', null, null)
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'757486322255396864', N'756018855557464064', N'00430046', N'project.jcxywc.basicInfo.dormitory', N'宿舍信息', N'menu', N'project/jcxywc/basicInfo/dormitoryInfo/home', N'', null, N'', N'1', N'1', N'1469433787583', N'admin', N'2016-07-25 16:03:07.583', N'admin', N'2016-07-26 11:21:22.290')
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'757827250996379648', N'0', N'0048', N'sys', N'系统管理', N'group', N'', N'icon-applications-blue', null, N'', N'1', N'1', N'1434943876721', N'admin', N'2016-07-26 14:37:51.120', N'admin', N'2016-10-27 00:00:00.000')
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'757827569637654528', N'757827250996379648', N'00480049', N'sys.log', N'日志管理', N'menu', N'blank.html', N'', null, N'', N'1', N'1', N'1469515147091', N'admin', N'2016-07-26 14:39:07.090', N'admin', N'2016-10-27 00:00:00.000')
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'757828175655862272', N'757827250996379648', N'00480051', N'sys.feedback', N'意见反馈', N'menu', N'blank.html', N'', null, N'', N'1', N'1', N'1469515204133', N'admin', N'2016-07-26 14:41:31.577', null, null)
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'757829259816337408', N'757827250996379648', N'00480054', N'sys.setting', N'系统参数设置', N'menu', N'blank.html', N'', null, N'', N'1', N'1', N'1469515550034', N'admin', N'2016-07-26 14:45:50.033', N'admin', N'2016-10-27 00:00:00.000')
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'757831692319719424', N'757831108174807040', N'00610063', N'dataquery.userQuery', N'用户使用查询', N'menu', N'blank.html', N'', null, N'', N'1', N'1', N'1469516129991', N'admin', N'2016-07-26 14:55:29.990', null, null)
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'757832092007530496', N'757831108174807040', N'00610064', N'dataquery.client.updateRecord', N'客户端升级记录', N'menu', N'blank.html', N'', null, N'', N'1', N'1', N'1469516225304', N'admin', N'2016-07-26 14:57:05.303', null, null)
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'757832344223612928', N'757831108174807040', N'00610066', N'dataquery.app.updateRecord', N'应用升级记录', N'menu', N'blank.html', N'', null, N'', N'1', N'1', N'1469516285401', N'admin', N'2016-07-26 14:58:05.400', N'admin', N'2016-07-26 14:58:15.110')
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'758112774709575680', N'756018855557464064', N'00430067', N'project.jcxywc.basicInfo.major', N'专业信息', N'menu', N'project/jcxywc/basicInfo/majorInfo/ ', N'', null, N'', N'1', N'1', N'1469583145245', N'admin', N'2016-07-27 09:32:25.243', null, null)
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'758472066876833792', N'758471274275012608', N'00690072', N'mam.mapply.mappList', N'申请记录', N'menu', N'mam/mapply/mappList', N'', null, N'', N'1', N'1', N'1469668807186', N'admin', N'2016-07-28 09:20:07.187', N'admin', N'2016-07-28 10:35:20.770')
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'791463124170440704', N'0', N'001y', N'app', N'api接口', N'group', N'', N'icon-weather-clouds', null, N'', N'1', N'1', N'1477534488139', N'admin', N'2016-10-27 00:00:00.000', N'admin', N'2016-10-27 00:00:00.000')
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'791464523360894976', N'791463124170440704', N'001y001z', N'app.api', N'知识管理api', N'menu', N'app/api?project=km', N'icon-weather-cloud', null, N'', N'1', N'1', N'1477534821730', N'admin', N'2016-10-27 00:00:00.000', N'admin', N'2016-10-27 00:00:00.000')
GO
GO

-- ----------------------------
-- Table structure for PRole
-- ----------------------------
DROP TABLE [dbo].[PRole]
GO
CREATE TABLE [dbo].[PRole] (
[id] bigint NOT NULL ,
[parentId] bigint NULL ,
[innerCode] nvarchar(4000) NULL ,
[isLeaf] bit NULL ,
[roleCode] nvarchar(64) NULL ,
[roleName] nvarchar(64) NULL ,
[memo] nvarchar(200) NULL ,
[addUser] nvarchar(64) NULL ,
[addTime] datetime NULL ,
[modifyUser] nvarchar(64) NULL ,
[modifyTime] datetime NULL ,
[groupCode] nvarchar(64) NULL 
)


GO

-- ----------------------------
-- Records of PRole
-- ----------------------------
INSERT INTO [dbo].[PRole] ([id], [parentId], [innerCode], [isLeaf], [roleCode], [roleName], [memo], [addUser], [addTime], [modifyUser], [modifyTime], [groupCode]) VALUES (N'1', N'0', N'0001', N'0', N'admin', N'管理员', N'', null, null, N'admin', N'2016-10-26 00:00:00.000', null)
GO
GO
INSERT INTO [dbo].[PRole] ([id], [parentId], [innerCode], [isLeaf], [roleCode], [roleName], [memo], [addUser], [addTime], [modifyUser], [modifyTime], [groupCode]) VALUES (N'763930984725872640', N'0', N'0014', N'1', N'U', N'用户', N'', N'admin', N'2016-08-12 10:51:54.667', N'admin', N'2016-10-26 00:00:00.000', N'584971736898863713')
GO
GO

-- ----------------------------
-- Table structure for PRoleAuthz
-- ----------------------------
DROP TABLE [dbo].[PRoleAuthz]
GO
CREATE TABLE [dbo].[PRoleAuthz] (
[id] bigint NOT NULL ,
[roleCode] nvarchar(64) NULL ,
[authzCode] nvarchar(64) NULL ,
[addTime] datetime NULL ,
[addUser] nvarchar(64) NULL ,
[modifyTime] datetime NULL ,
[modifyUser] nvarchar(64) NULL 
)


GO

-- ----------------------------
-- Records of PRoleAuthz
-- ----------------------------
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791831473249320960', N'admin', N'platform', N'2016-10-28 00:00:00.000', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791831473257709568', N'admin', N'platform.permission', N'2016-10-28 00:00:00.000', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791831473261903872', N'admin', N'platform.user', N'2016-10-28 00:00:00.000', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791831473266098176', N'admin', N'platform.role', N'2016-10-28 00:00:00.000', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791831473266098177', N'admin', N'sys', N'2016-10-28 00:00:00.000', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791831473270292480', N'admin', N'sys.log', N'2016-10-28 00:00:00.000', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791831473274486784', N'admin', N'sys.feedback', N'2016-10-28 00:00:00.000', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791831473274486785', N'admin', N'sys.setting', N'2016-10-28 00:00:00.000', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791831473278681088', N'admin', N'codegen', N'2016-10-28 00:00:00.000', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791831473282875392', N'admin', N'codegen.model', N'2016-10-28 00:00:00.000', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791831473287069696', N'admin', N'codegen.iconIndex', N'2016-10-28 00:00:00.000', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791831473287069697', N'admin', N'codegen.druid', N'2016-10-28 00:00:00.000', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791831473291264000', N'admin', N'app', N'2016-10-28 00:00:00.000', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791831473291264001', N'admin', N'app.api', N'2016-10-28 00:00:00.000', N'admin', null, null)
GO
GO

-- ----------------------------
-- Table structure for PRolePermission
-- ----------------------------
DROP TABLE [dbo].[PRolePermission]
GO
CREATE TABLE [dbo].[PRolePermission] (
[id] bigint NOT NULL ,
[roleId] bigint NULL ,
[permissionId] bigint NULL ,
[addTime] datetime NULL ,
[addUser] varchar(64) NULL ,
[modifyTime] datetime NULL ,
[modifyUser] varchar(64) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PRolePermission', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'平台角色权限关联表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PRolePermission'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'平台角色权限关联表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PRolePermission'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PRolePermission', 
'COLUMN', N'id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'null'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PRolePermission'
, @level2type = 'COLUMN', @level2name = N'id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'null'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PRolePermission'
, @level2type = 'COLUMN', @level2name = N'id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PRolePermission', 
'COLUMN', N'roleId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'null'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PRolePermission'
, @level2type = 'COLUMN', @level2name = N'roleId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'null'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PRolePermission'
, @level2type = 'COLUMN', @level2name = N'roleId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PRolePermission', 
'COLUMN', N'permissionId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'null'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PRolePermission'
, @level2type = 'COLUMN', @level2name = N'permissionId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'null'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PRolePermission'
, @level2type = 'COLUMN', @level2name = N'permissionId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PRolePermission', 
'COLUMN', N'addTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'null'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PRolePermission'
, @level2type = 'COLUMN', @level2name = N'addTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'null'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PRolePermission'
, @level2type = 'COLUMN', @level2name = N'addTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PRolePermission', 
'COLUMN', N'addUser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'null'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PRolePermission'
, @level2type = 'COLUMN', @level2name = N'addUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'null'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PRolePermission'
, @level2type = 'COLUMN', @level2name = N'addUser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PRolePermission', 
'COLUMN', N'modifyTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'null'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PRolePermission'
, @level2type = 'COLUMN', @level2name = N'modifyTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'null'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PRolePermission'
, @level2type = 'COLUMN', @level2name = N'modifyTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PRolePermission', 
'COLUMN', N'modifyUser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'null'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PRolePermission'
, @level2type = 'COLUMN', @level2name = N'modifyUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'null'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PRolePermission'
, @level2type = 'COLUMN', @level2name = N'modifyUser'
GO

-- ----------------------------
-- Records of PRolePermission
-- ----------------------------

-- ----------------------------
-- Table structure for PSequence
-- ----------------------------
DROP TABLE [dbo].[PSequence]
GO
CREATE TABLE [dbo].[PSequence] (
[seqName] nvarchar(50) NOT NULL ,
[nextVal] bigint NOT NULL 
)


GO

-- ----------------------------
-- Records of PSequence
-- ----------------------------
INSERT INTO [dbo].[PSequence] ([seqName], [nextVal]) VALUES (N'global', N'6346')
GO
GO
INSERT INTO [dbo].[PSequence] ([seqName], [nextVal]) VALUES (N'PGroup', N'3887')
GO
GO
INSERT INTO [dbo].[PSequence] ([seqName], [nextVal]) VALUES (N'PPermission', N'100')
GO
GO
INSERT INTO [dbo].[PSequence] ([seqName], [nextVal]) VALUES (N'PRole', N'18')
GO
GO

-- ----------------------------
-- Table structure for PSyncStamp
-- ----------------------------
DROP TABLE [dbo].[PSyncStamp]
GO
CREATE TABLE [dbo].[PSyncStamp] (
[syncName] varchar(200) NOT NULL ,
[lastSyncTime] datetime NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PSyncStamp', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'数据同步标记'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PSyncStamp'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'数据同步标记'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PSyncStamp'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PSyncStamp', 
'COLUMN', N'syncName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'null'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PSyncStamp'
, @level2type = 'COLUMN', @level2name = N'syncName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'null'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PSyncStamp'
, @level2type = 'COLUMN', @level2name = N'syncName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PSyncStamp', 
'COLUMN', N'lastSyncTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'null'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PSyncStamp'
, @level2type = 'COLUMN', @level2name = N'lastSyncTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'null'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PSyncStamp'
, @level2type = 'COLUMN', @level2name = N'lastSyncTime'
GO

-- ----------------------------
-- Records of PSyncStamp
-- ----------------------------

-- ----------------------------
-- Table structure for PUser
-- ----------------------------
DROP TABLE [dbo].[PUser]
GO
CREATE TABLE [dbo].[PUser] (
[id] bigint NOT NULL ,
[userCode] nvarchar(64) NOT NULL ,
[userName] nvarchar(200) NOT NULL ,
[realName] nvarchar(200) NULL ,
[password] nvarchar(100) NOT NULL ,
[branchGroupCode] nvarchar(64) NOT NULL ,
[isBranchAdmin] bit NULL ,
[isEnable] bit NOT NULL ,
[type] nvarchar(20) NOT NULL ,
[email] nvarchar(100) NULL ,
[mobile] nvarchar(50) NULL ,
[lastLoginTime] datetime NULL DEFAULT NULL ,
[lastLoginIp] nvarchar(50) NULL ,
[addTime] datetime NOT NULL ,
[addUser] nvarchar(64) NOT NULL ,
[modifyTime] datetime NULL ,
[modifyUser] nvarchar(64) NULL ,
[portrait] varchar(256) NULL ,
[StudentNumber] nvarchar(256) NULL ,
[nickname] varchar(100) NULL ,
[verifyPhone] varchar(100) NULL ,
[facility] varchar(100) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PUser', 
'COLUMN', N'StudentNumber')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'学号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PUser'
, @level2type = 'COLUMN', @level2name = N'StudentNumber'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'学号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PUser'
, @level2type = 'COLUMN', @level2name = N'StudentNumber'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PUser', 
'COLUMN', N'nickname')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'昵称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PUser'
, @level2type = 'COLUMN', @level2name = N'nickname'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'昵称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PUser'
, @level2type = 'COLUMN', @level2name = N'nickname'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PUser', 
'COLUMN', N'verifyPhone')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'绑定手机号码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PUser'
, @level2type = 'COLUMN', @level2name = N'verifyPhone'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'绑定手机号码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PUser'
, @level2type = 'COLUMN', @level2name = N'verifyPhone'
GO

-- ----------------------------
-- Records of PUser
-- ----------------------------
INSERT INTO [dbo].[PUser] ([id], [userCode], [userName], [realName], [password], [branchGroupCode], [isBranchAdmin], [isEnable], [type], [email], [mobile], [lastLoginTime], [lastLoginIp], [addTime], [addUser], [modifyTime], [modifyUser], [portrait], [StudentNumber], [nickname], [verifyPhone], [facility]) VALUES (N'1', N'admin', N'admin', N'系统管理员', N'21218cca77804d2ba1922c33e0151105', N'0000', N'1', N'1', N'U', N'471110230@qq.com', N'15267129258', N'2016-08-01 14:49:40.817', null, N'2012-02-22 11:39:42.000', N'sys', N'2016-06-02 09:10:59.387', N'sys', N'150001_144x144.jpg', null, N'系统管理员', null, null)
GO
GO

-- ----------------------------
-- Table structure for PUserRole
-- ----------------------------
DROP TABLE [dbo].[PUserRole]
GO
CREATE TABLE [dbo].[PUserRole] (
[id] bigint NOT NULL ,
[userCode] nvarchar(64) NULL ,
[roleCode] nvarchar(64) NULL ,
[addTime] datetime NULL ,
[addUser] nvarchar(64) NULL ,
[modifyTime] datetime NULL ,
[modifyUser] nvarchar(64) NULL 
)


GO

-- ----------------------------
-- Records of PUserRole
-- ----------------------------
INSERT INTO [dbo].[PUserRole] ([id], [userCode], [roleCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'620152997980143616', N'admin', N'admin', N'2015-07-12 16:49:31.260', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PUserRole] ([id], [userCode], [roleCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'763931343468888064', N'14191201', N'zxs', N'2016-08-12 10:53:20.097', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PUserRole] ([id], [userCode], [roleCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'763931402658906112', N'16200801', N'xs', N'2016-08-12 10:53:34.210', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PUserRole] ([id], [userCode], [roleCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'767630353962631168', N'21', N'X', N'2016-08-22 15:51:52.927', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PUserRole] ([id], [userCode], [roleCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'767630354142986240', N'160003', N'X', N'2016-08-22 15:51:52.967', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PUserRole] ([id], [userCode], [roleCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'767630354210095104', N'16200801', N'X', N'2016-08-22 15:51:52.983', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PUserRole] ([id], [userCode], [roleCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'767630354256232448', N'XT0001', N'X', N'2016-08-22 15:51:52.993', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PUserRole] ([id], [userCode], [roleCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'767630354314952704', N'XT0002', N'X', N'2016-08-22 15:51:53.007', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PUserRole] ([id], [userCode], [roleCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'767630354398838784', N'XT0003', N'X', N'2016-08-22 15:51:53.027', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PUserRole] ([id], [userCode], [roleCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'767630354449170432', N'XT0004', N'X', N'2016-08-22 15:51:53.040', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PUserRole] ([id], [userCode], [roleCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'767630354495307776', N'XT0005', N'X', N'2016-08-22 15:51:53.050', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PUserRole] ([id], [userCode], [roleCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'767630354558222336', N'XT0006', N'X', N'2016-08-22 15:51:53.067', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PUserRole] ([id], [userCode], [roleCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'767630354608553984', N'XT0007', N'X', N'2016-08-22 15:51:53.077', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PUserRole] ([id], [userCode], [roleCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'767630354658885632', N'XT0008', N'X', N'2016-08-22 15:51:53.090', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PUserRole] ([id], [userCode], [roleCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'767630354742771712', N'XT0009', N'X', N'2016-08-22 15:51:53.110', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PUserRole] ([id], [userCode], [roleCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'767630354801491968', N'14191201', N'X', N'2016-08-22 15:51:53.123', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PUserRole] ([id], [userCode], [roleCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'767630354847629312', N'330501199002091449', N'X', N'2016-08-22 15:51:53.137', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PUserRole] ([id], [userCode], [roleCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'767630354910543872', N'160001', N'X', N'2016-08-22 15:51:53.150', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PUserRole] ([id], [userCode], [roleCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'767630354973458432', N'150001', N'X', N'2016-08-22 15:51:53.167', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PUserRole] ([id], [userCode], [roleCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'767630355027984384', N'160002', N'X', N'2016-08-22 15:51:53.177', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PUserRole] ([id], [userCode], [roleCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791185235910852608', N'admin', N'admin', N'2016-10-26 00:00:00.000', N'admin', null, null)
GO
GO

-- ----------------------------
-- Table structure for PUserSettings
-- ----------------------------
DROP TABLE [dbo].[PUserSettings]
GO
CREATE TABLE [dbo].[PUserSettings] (
[userCode] varchar(64) NULL ,
[configName] varchar(64) NULL ,
[configValue] text NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PUserSettings', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'平台-用户设置'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PUserSettings'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'平台-用户设置'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PUserSettings'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PUserSettings', 
'COLUMN', N'userCode')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'null'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PUserSettings'
, @level2type = 'COLUMN', @level2name = N'userCode'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'null'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PUserSettings'
, @level2type = 'COLUMN', @level2name = N'userCode'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PUserSettings', 
'COLUMN', N'configName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'null'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PUserSettings'
, @level2type = 'COLUMN', @level2name = N'configName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'null'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PUserSettings'
, @level2type = 'COLUMN', @level2name = N'configName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'PUserSettings', 
'COLUMN', N'configValue')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'null'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PUserSettings'
, @level2type = 'COLUMN', @level2name = N'configValue'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'null'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'PUserSettings'
, @level2type = 'COLUMN', @level2name = N'configValue'
GO

-- ----------------------------
-- Records of PUserSettings
-- ----------------------------

-- ----------------------------
-- Indexes structure for table CGModel
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table CGModel
-- ----------------------------
ALTER TABLE [dbo].[CGModel] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table CGModelField
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table CGModelField
-- ----------------------------
ALTER TABLE [dbo].[CGModelField] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table KM_CONFIG
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table KM_CONFIG
-- ----------------------------
ALTER TABLE [dbo].[KM_CONFIG] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table KM_LABLE
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table KM_LABLE
-- ----------------------------
ALTER TABLE [dbo].[KM_LABLE] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table KM_MD_TEMP
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table KM_MD_TEMP
-- ----------------------------
ALTER TABLE [dbo].[KM_MD_TEMP] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table KM_Q_A
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table KM_Q_A
-- ----------------------------
ALTER TABLE [dbo].[KM_Q_A] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table PAPI
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table PAPI
-- ----------------------------
ALTER TABLE [dbo].[PAPI] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table PPermission
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table PPermission
-- ----------------------------
ALTER TABLE [dbo].[PPermission] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table PRole
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table PRole
-- ----------------------------
ALTER TABLE [dbo].[PRole] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table PRoleAuthz
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table PRoleAuthz
-- ----------------------------
ALTER TABLE [dbo].[PRoleAuthz] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table PRolePermission
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table PRolePermission
-- ----------------------------
ALTER TABLE [dbo].[PRolePermission] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table PSequence
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table PSequence
-- ----------------------------
ALTER TABLE [dbo].[PSequence] ADD PRIMARY KEY ([seqName])
GO

-- ----------------------------
-- Indexes structure for table PSyncStamp
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table PSyncStamp
-- ----------------------------
ALTER TABLE [dbo].[PSyncStamp] ADD PRIMARY KEY ([syncName])
GO

-- ----------------------------
-- Indexes structure for table PUser
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table PUser
-- ----------------------------
ALTER TABLE [dbo].[PUser] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table PUserRole
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table PUserRole
-- ----------------------------
ALTER TABLE [dbo].[PUserRole] ADD PRIMARY KEY ([id])
GO
