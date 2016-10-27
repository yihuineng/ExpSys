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

Date: 2016-10-27 10:49:21
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
INSERT INTO [dbo].[CGModel] ([id], [modelCode], [modelName], [modelType], [modelPackage]) VALUES (N'585209964935512064', N'PLogDataDelete', N'平台删除日志表', N'Table', N'net.yihuineng.platform')
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
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063021439385600', N'PLogDataDelete', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063021447774208', N'PLogDataDelete', N'tableCode', null, N'varchar(null)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063021460357120', N'PLogDataDelete', N'pk', null, N'bigint', N'long', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063021498105856', N'PLogDataDelete', N'memo', null, N'text', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063021506494464', N'PLogDataDelete', N'deleteTime', null, N'datetime', N'Date', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'620063021514883072', N'PLogDataDelete', N'deleteUser', null, N'varchar(null)', N'String', N'0', N'0', null, N'6')
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
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755363397087789056', N'MApply', N'reviewedTime', N'审核时间', N'datetime', N'Date', N'0', N'0', null, N'14')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755363397150703616', N'MApply', N'reviewedNonte', N'审核说明', N'varchar(255)', N'String', N'0', N'0', null, N'15')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755363397205229568', N'MApply', N'isDel', N'应用状态，是否下线', N'varchar(2)', N'String', N'0', N'0', null, N'16')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755363397268144128', N'MApply', N'isLastest', N'是否为最新版本', N'bit', N'boolean', N'0', N'0', null, N'17')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755363397318475776', N'MApply', N'updateDate', N'更新时间', N'datetime', N'Date', N'0', N'0', null, N'18')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755363397373001728', N'MApply', N'updateUser', N'更新用户', N'varchar(50)', N'String', N'0', N'0', null, N'19')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755952781881245696', N'FmCheck', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755952781952548864', N'FmCheck', N'type', N'请销假类型', N'varchar(64)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755952782019657728', N'FmCheck', N'startTime', N'开始时间', N'varchar(64)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755952782120321024', N'FmCheck', N'applyName', N'申请人姓名', N'varchar(64)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755952782216790016', N'FmCheck', N'department', N'所在部门', N'varchar(128)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755952782309064704', N'FmCheck', N'applyHour', N'小时数', N'float', N'double', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755952782380367872', N'FmCheck', N'applyDay', N'折合天数', N'float', N'double', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755952782464253952', N'FmCheck', N'attachment', N'附件', N'varchar(128)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755952782535557120', N'FmCheck', N'reason', N'事由', N'text', N'String', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755952782615248896', N'FmCheck', N'officeOpinion', N'科室审核意见', N'text', N'String', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755952782678163456', N'FmCheck', N'departOpinion', N'部门审核意见', N'text', N'String', N'0', N'0', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755952862906810368', N'FmReport', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755952863003279360', N'FmReport', N'name', N'报告人姓名', N'varchar(128)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755952863095554048', N'FmReport', N'reportTime', N'报告时间', N'varchar(128)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755952863166857216', N'FmReport', N'workUnit', N'工作单位', N'varchar(128)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755952863233966080', N'FmReport', N'job', N'职务', N'varchar(128)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755952863296880640', N'FmReport', N'reportType', N'类别', N'varchar(128)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755952863359795200', N'FmReport', N'reportContent', N'报告内容', N'text', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755952863426904064', N'FmReport', N'leaderOpinion', N'领导意见', N'text', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755952863489818624', N'FmReport', N'reportSign', N'报告人签名', N'varchar(128)', N'String', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'755952863573704704', N'FmReport', N'acceptSign', N'受理人签名', N'varchar(128)', N'String', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013722140409856', N'W1ClassInformation', N'Id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013722350125056', N'W1ClassInformation', N'ClassNo', N'班级编号', N'varchar(50)', N'String', N'0', N'1', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013722446594048', N'W1ClassInformation', N'ClassName', N'班级名称', N'varchar(50)', N'String', N'0', N'1', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013722505314304', N'W1ClassInformation', N'Troops', N'大队', N'varchar(50)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013722572423168', N'W1ClassInformation', N'Department', N'院系', N'varchar(20)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013722626949120', N'W1ClassInformation', N'MajorNo', N'专业', N'varchar(50)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013722698252288', N'W1ClassInformation', N'Grade', N'年级', N'varchar(20)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013722765361152', N'W1ClassInformation', N'ClassOrder', N'班次', N'varchar(50)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013722828275712', N'W1ClassInformation', N'HeadTeacher', N'班主任', N'varchar(50)', N'String', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013722907967488', N'W1ClassInformation', N'Counselor1', N'辅导员1', N'varchar(50)', N'String', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013722970882048', N'W1ClassInformation', N'Counselor2', N'辅导员2', N'varchar(50)', N'String', N'0', N'0', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013723029602304', N'W1ClassInformation', N'Counselor3', N'辅导员3', N'varchar(50)', N'String', N'0', N'0', null, N'12')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013744479272960', N'W1CommunicationInformation', N'Id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013744567353344', N'W1CommunicationInformation', N'StudentNumber', N'学号', N'varchar(50)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013744642850816', N'W1CommunicationInformation', N'IDCardNo', N'身份证', N'varchar(50)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013744722542592', N'W1CommunicationInformation', N'Phone', N'手机', N'varchar(50)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013744835788800', N'W1CommunicationInformation', N'Email', N'邮箱', N'varchar(50)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013744907091968', N'W1CommunicationInformation', N'QQ', null, N'bigint', N'long', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013744978395136', N'W1CommunicationInformation', N'Wechat', N'微信', N'varchar(50)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013745079058432', N'W1CommunicationInformation', N'FamilyAddr', N'家庭地址', N'varchar(200)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013745150361600', N'W1CommunicationInformation', N'PostCode', N'邮编', N'bigint', N'long', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013745213276160', N'W1CommunicationInformation', N'FamilyPhone', N'电话', N'varchar(50)', N'String', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013745292967936', N'W1CommunicationInformation', N'BookTime', N'登记时间', N'datetime', N'Date', N'0', N'0', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013763416555520', N'W1EducationInformation', N'Id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013763500441600', N'W1EducationInformation', N'StudentNumber', N'学号', N'varchar(50)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013763596910592', N'W1EducationInformation', N'IDCardNo', N'IDCardNo', N'varchar(50)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013763664019456', N'W1EducationInformation', N'Education', N'教育层次', N'varchar(20)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013763760488448', N'W1EducationInformation', N'SchoolName', N'学校名称', N'varchar(20)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013763827597312', N'W1EducationInformation', N'BeginDate', N'开始时间', N'datetime', N'Date', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013763898900480', N'W1EducationInformation', N'EndDate', N'开始时间', N'datetime', N'Date', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013763986980864', N'W1EducationInformation', N'Record', N'奖惩情况', N'varchar(50)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013764150558720', N'W1EducationInformation', N'BookTime', N'登记时间', N'datetime', N'Date', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013787005321216', N'W1FamilyMembersInformation', N'Id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013787085012992', N'W1FamilyMembersInformation', N'StudentNumber', N'StudentNumber', N'bigint', N'long', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013787156316160', N'W1FamilyMembersInformation', N'IDCardNo', N'身份证', N'varchar(50)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013787223425024', N'W1FamilyMembersInformation', N'Name', N'姓名', N'varchar(20)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013787290533888', N'W1FamilyMembersInformation', N'Relation', N'与本人关系', N'varchar(20)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013787361837056', N'W1FamilyMembersInformation', N'Age', N'年级', N'bigint', N'long', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013787424751616', N'W1FamilyMembersInformation', N'PoliticalStatus', N'政治面貌', N'varchar(20)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013787496054784', N'W1FamilyMembersInformation', N'Phone', null, N'varchar(50)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013787588329472', N'W1FamilyMembersInformation', N'Job', N'职业', N'varchar(20)', N'String', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013787668021248', N'W1FamilyMembersInformation', N'BookTime', N'登记时间', N'datetime', N'Date', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013887144329216', N'W1HobbyDefinition', N'Id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013887236603904', N'W1HobbyDefinition', N'HobbyNo', N'编号', N'varchar(50)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013887324684288', N'W1HobbyDefinition', N'HobbyName', N'名称', N'varchar(50)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013887437930496', N'W1HobbyDefinition', N'Effective', N'是否有效', N'varchar(4)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013887505039360', N'W1HobbyDefinition', N'OrderNo', N'排序号', N'bigint', N'long', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013887567953920', N'W1HobbyDefinition', N'Classify', N'所属分类', N'varchar(50)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013887626674176', N'W1HobbyDefinition', N'ConnectionMessageNo1', N'关联消息订阅编号1', N'varchar(50)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013887693783040', N'W1HobbyDefinition', N'ConnectionMessageNo2', N'关联消息订阅编号2', N'varchar(50)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013887760891904', N'W1HobbyDefinition', N'BookTime', N'登记时间', N'datetime', N'Date', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013933696909312', N'W1PersonalHobby', N'id', null, N'varchar(10)', N'String', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013933755629568', N'W1PersonalHobby', N'StudentNumber', null, N'varchar(50)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013933852098560', N'W1PersonalHobby', N'IDCardNo', null, N'varchar(50)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013933910818816', N'W1PersonalHobby', N'HobbyNo', N'爱好编号', N'varchar(50)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013933994704896', N'W1PersonalHobby', N'HobbyName', N'爱好名称', N'varchar(50)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013934078590976', N'W1PersonalHobby', N'BookTime', N'登记时间', N'datetime', N'Date', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013958971785216', N'W1PersonalOtherInformation', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013959047282688', N'W1PersonalOtherInformation', N'StudentNumber', N'学号', N'varchar(50)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013959118585856', N'W1PersonalOtherInformation', N'IDCardNo', N'身份证', N'varchar(50)', N'String', N'0', N'1', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013959181500416', N'W1PersonalOtherInformation', N'RegisterTime', N'注册时间', N'datetime', N'Date', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013959261192192', N'W1PersonalOtherInformation', N'CheckTime', N'认证时间', N'datetime', N'Date', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013959336689664', N'W1PersonalOtherInformation', N'SchoolValidate', N'来校确认', N'varchar(4)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013959399604224', N'W1PersonalOtherInformation', N'ValidateTime', N'验证时间', N'datetime', N'Date', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013959462518784', N'W1PersonalOtherInformation', N'DormitoryIn', N'寝室入住', N'varchar(4)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013959533821952', N'W1PersonalOtherInformation', N'DormitoryTime', N'寝室时间', N'datetime', N'Date', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013959613513728', N'W1PersonalOtherInformation', N'OneCardPass', N'一卡通办理', N'varchar(4)', N'String', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013959684816896', N'W1PersonalOtherInformation', N'PassTime', N'办理时间', N'datetime', N'Date', N'0', N'0', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013959751925760', N'W1PersonalOtherInformation', N'PartyRelationMove', N'党团关系迁移', N'varchar(4)', N'String', N'0', N'0', null, N'12')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013959831617536', N'W1PersonalOtherInformation', N'PMoveTime', N'迁移确认时间', N'datetime', N'Date', N'0', N'0', null, N'13')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013959932280832', N'W1PersonalOtherInformation', N'ResidenceMove', N'户口迁移', N'varchar(4)', N'String', N'0', N'0', null, N'14')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013959991001088', N'W1PersonalOtherInformation', N'RMoveTime', N'户口迁移确认时间', N'datetime', N'Date', N'0', N'0', null, N'15')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013960053915648', N'W1PersonalOtherInformation', N'ClothingReceive', N'军训服装领取', N'varchar(4)', N'String', N'0', N'0', null, N'16')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013960116830208', N'W1PersonalOtherInformation', N'CReceiveTime', N'军训服装领取时间', N'datetime', N'Date', N'0', N'0', null, N'17')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013960192327680', N'W1PersonalOtherInformation', N'EquipmentReceive', N'警校装备领取', N'varchar(4)', N'String', N'0', N'0', null, N'18')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013960259436544', N'W1PersonalOtherInformation', N'EReceiveTime', N'警校装备领取时间', N'datetime', N'Date', N'0', N'0', null, N'19')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013960364294144', N'W1PersonalOtherInformation', N'InsuranceDeal', N'保险办理', N'varchar(4)', N'String', N'0', N'0', null, N'20')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013960431403008', N'W1PersonalOtherInformation', N'DealTime', N'保险办理时间', N'datetime', N'Date', N'0', N'0', null, N'21')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013960498511872', N'W1PersonalOtherInformation', N'Height', N'身高', N'varchar(20)', N'String', N'0', N'0', null, N'22')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013960561426432', N'W1PersonalOtherInformation', N'Weight', N'体重', N'varchar(20)', N'String', N'0', N'0', null, N'23')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013960624340992', N'W1PersonalOtherInformation', N'ShoeSize', N'鞋码', N'varchar(20)', N'String', N'0', N'0', null, N'24')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756013960687255552', N'W1PersonalOtherInformation', N'BookTime', N'登记时间', N'datetime', N'Date', N'0', N'0', null, N'25')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756409847838146560', N'W2ReportClassification', N'Id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756409848052056064', N'W2ReportClassification', N'Code', N'类别编号', N'varchar(20)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756409848123359232', N'W2ReportClassification', N'Name', N'类别名称', N'varchar(50)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756409848194662400', N'W2ReportClassification', N'FatherCode', N'上级类别', N'varchar(20)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756409848307908608', N'W2ReportClassification', N'Hierarchy', N'层级', N'varchar(20)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756409848379211776', N'W2ReportClassification', N'OrderId', N'排序号', N'varchar(20)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756409848442126336', N'W2ReportClassification', N'IsEffective', N'是否有效', N'varchar(4)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756409848517623808', N'W2ReportClassification', N'IsContent', N'是否有内容', N'varchar(4)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756409848584732672', N'W2ReportClassification', N'Photo', N'显示效果图片', N'varchar(50)', N'String', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756409848660230144', N'W2ReportClassification', N'IsBottom', N'是否最底层', N'varchar(4)', N'String', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756409848731533312', N'W2ReportClassification', N'ShowType', N'展示形式（0列表 1内容）', N'varchar(4)', N'String', N'0', N'0', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756411109539315712', N'W2ReportClassificationContent', N'Id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756411109715476480', N'W2ReportClassificationContent', N'Code', N'类别编号', N'varchar(20)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756411109820334080', N'W2ReportClassificationContent', N'Name', N'类别名称', N'varchar(50)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756411109883248640', N'W2ReportClassificationContent', N'Title', N'标题', N'varchar(100)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756411109941968896', N'W2ReportClassificationContent', N'Tips', N'摘要', N'varchar(300)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756411110000689152', N'W2ReportClassificationContent', N'Content', N'内容', N'varchar(1000)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756411110067798016', N'W2ReportClassificationContent', N'PhotoNumber', N'图片数', N'varchar(20)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756411110130712576', N'W2ReportClassificationContent', N'AttachmentNumber', N'附件数', N'varchar(20)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756411110193627136', N'W2ReportClassificationContent', N'OrderId', N'排序号', N'varchar(20)', N'String', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756411110256541696', N'W2ReportClassificationContent', N'IsEffective', N'是否有效', N'varchar(4)', N'String', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756411110319456256', N'W2ReportClassificationContent', N'Statu', N'状态（0未发布 1已发布）', N'varchar(4)', N'String', N'0', N'0', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756411110382370816', N'W2ReportClassificationContent', N'CreateTime', N'发布时间', N'datetime', N'Date', N'0', N'0', null, N'12')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'756411110457868288', N'W2ReportClassificationContent', N'Operator', N'发布人', N'varchar(50)', N'String', N'0', N'0', null, N'13')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757388192906215424', N'W2LeaveInformation', N'Id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757388192969129984', N'W2LeaveInformation', N'StudentNumber', N'学号', N'varchar(50)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757388193040433152', N'W2LeaveInformation', N'IDCardNo', N'身份证号', N'varchar(50)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757388193111736320', N'W2LeaveInformation', N'Type', N'请假类型', N'varchar(50)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757388193212399616', N'W2LeaveInformation', N'Reason', N'请假原因', N'varchar(50)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757388193283702784', N'W2LeaveInformation', N'Number', N'请假天数', N'varchar(10)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757388193350811648', N'W2LeaveInformation', N'LeaveDate', N'请假时间', N'datetime', N'Date', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757388603595685888', N'W2InsuranceInformation', N'Id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757388603675377664', N'W2InsuranceInformation', N'StudentNumber', N'学号', N'varchar(50)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757388603750875136', N'W2InsuranceInformation', N'IDCardNo', N'身份证', N'varchar(50)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757388606179377152', N'W2InsuranceInformation', N'Types', N'险种', N'varchar(50)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757388606301011968', N'W2InsuranceInformation', N'Recognizee', N'被保人', N'varchar(50)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757388606426841088', N'W2InsuranceInformation', N'Fee', N'保费', N'varchar(50)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757388606561058816', N'W2InsuranceInformation', N'TimeLimit', N'保期', N'varchar(50)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757388606678499328', N'W2InsuranceInformation', N'InsureTime', N'投保时间', N'datetime', N'Date', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757389011772768256', N'W2PaymentInformation', N'Id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757389011944734720', N'W2PaymentInformation', N'StudentNumber', N'学号', N'varchar(50)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757389012150255616', N'W2PaymentInformation', N'IDCardNo', N'身份证', N'varchar(50)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757389012305444864', N'W2PaymentInformation', N'IsPay', N'是否缴费', N'varchar(4)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757389012489994240', N'W2PaymentInformation', N'PayTime', N'缴费时间', N'datetime', N'Date', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757389012557103104', N'W2PaymentInformation', N'CheckStatus', N'验证状态', N'varchar(4)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757389846569287680', N'W2ShoeClothBook', N'Id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757389846783197184', N'W2ShoeClothBook', N'StudentNumber', N'学号', N'varchar(50)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757389846892249088', N'W2ShoeClothBook', N'IDCardNo', N'身份证', N'varchar(50)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757389846950969344', N'W2ShoeClothBook', N'ClothSize', N'衣服尺码', N'varchar(20)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757389847018078208', N'W2ShoeClothBook', N'ShoeSize', N'鞋码', N'varchar(20)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757391368736735232', N'W2PartyCheckInformation', N'Id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757391368816427008', N'W2PartyCheckInformation', N'StudentNumber', N'学号', N'varchar(50)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757391368900313088', N'W2PartyCheckInformation', N'IDCardNo', N'身份证', N'varchar(50)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757391368971616256', N'W2PartyCheckInformation', N'PoliticalStatus', N'政治面貌', N'varchar(50)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757391369047113728', N'W2PartyCheckInformation', N'JoinTime', N'入党（团）时间', N'datetime', N'Date', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757391369114222592', N'W2PartyCheckInformation', N'PassTime', N'转正时间', N'datetime', N'Date', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757391369185525760', N'W2PartyCheckInformation', N'Belong', N'所在党组织', N'varchar(50)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757391369252634624', N'W2PartyCheckInformation', N'IsRemove', N'是否迁移', N'varchar(4)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757391369315549184', N'W2PartyCheckInformation', N'IntroductionLetter', N'组织介绍信附件', N'varchar(50)', N'String', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757391920174465024', N'W2ResidenceMoveInformation', N'Id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757391920312877056', N'W2ResidenceMoveInformation', N'StudentNumber', N'学号', N'varchar(50)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757391920400957440', N'W2ResidenceMoveInformation', N'IDCardNo', N'身份证', N'varchar(50)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757391920463872000', N'W2ResidenceMoveInformation', N'Property', N'户口性质', N'varchar(20)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757391920535175168', N'W2ResidenceMoveInformation', N'Location', N'户口所在地', N'varchar(20)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757391920606478336', N'W2ResidenceMoveInformation', N'IsMove', N'是否迁移', N'varchar(4)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757391920681975808', N'W2ResidenceMoveInformation', N'Attachment', N'迁移证明附件', N'varchar(50)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757391920765861888', N'W2ResidenceMoveInformation', N'CheckStatu', N'验证状态（0未验证 1已验证）', N'varchar(4)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757392250702397440', N'W2ClothSize', N'Id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757392250765312000', N'W2ClothSize', N'Sex', N'性别', N'varchar(10)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757392250828226560', N'W2ClothSize', N'Height', N'身高', N'varchar(20)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757392250895335424', N'W2ClothSize', N'Weight', N'体重', N'varchar(20)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757392250966638592', N'W2ClothSize', N'Size', N'参考尺码', N'varchar(20)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757394822397952000', N'W3AreaList', N'Province', N'省', N'varchar(20)', N'String', N'0', N'0', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757394822565724160', N'W3AreaList', N'City', N'市', N'varchar(20)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757394822637027328', N'W3AreaList', N'County', N'区/县', N'varchar(20)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757394822691553280', N'W3AreaList', N'PoliceStation', N'派出所', N'varchar(20)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757394822750273536', N'W3AreaList', N'Id', null, N'bigint', N'long', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757395448943083520', N'W3SchoolTableList', N'Id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757395449165381632', N'W3SchoolTableList', N'Code', N'类别编号', N'varchar(20)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757395449261850624', N'W3SchoolTableList', N'Name', N'类别名称', N'varchar(50)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757395449349931008', N'W3SchoolTableList', N'FatherCode', N'上级类别', N'varchar(20)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757395449433817088', N'W3SchoolTableList', N'Hierarchy', N'层级', N'varchar(20)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757395449500925952', N'W3SchoolTableList', N'OrderId', N'排序号', N'varchar(20)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757395449589006336', N'W3SchoolTableList', N'IsEffective', N'是否有效', N'varchar(4)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757395449651920896', N'W3SchoolTableList', N'IsContent', N'是否有内容', N'varchar(4)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757395449723224064', N'W3SchoolTableList', N'Photo', N'显示效果图片', N'varchar(50)', N'String', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757395449790332928', N'W3SchoolTableList', N'IsBottom', N'是否最底层', N'varchar(4)', N'String', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757395449941327872', N'W3SchoolTableList', N'ShowType', N'展示形式（0列表 1内容）', N'varchar(4)', N'String', N'0', N'0', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757396296137965568', N'W3SchoolTableContent', N'Id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757396296196685824', N'W3SchoolTableContent', N'Code', N'类别编号', N'varchar(20)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757396296263794688', N'W3SchoolTableContent', N'Name', N'类别名称', N'varchar(50)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757396296314126336', N'W3SchoolTableContent', N'Title', N'标题', N'varchar(100)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757396296360263680', N'W3SchoolTableContent', N'Tips', N'摘要', N'varchar(300)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757396296414789632', N'W3SchoolTableContent', N'Content', N'内容', N'varchar(1000)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757396296477704192', N'W3SchoolTableContent', N'PhotoNumber', N'图片数', N'varchar(20)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757396296532230144', N'W3SchoolTableContent', N'AttachmentNumber', N'附件数', N'varchar(20)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757396296620310528', N'W3SchoolTableContent', N'OrderId', N'排序数', N'varchar(20)', N'String', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757396296691613696', N'W3SchoolTableContent', N'IsEffective', N'是否有效', N'varchar(4)', N'String', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757396296741945344', N'W3SchoolTableContent', N'Statu', N'状态（0未发布 1已发布）', N'varchar(4)', N'String', N'0', N'0', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757396296809054208', N'W3SchoolTableContent', N'CreateTime', N'发布时间', N'datetime', N'Date', N'0', N'0', null, N'12')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757396296871968768', N'W3SchoolTableContent', N'Operator', N'发布人', N'varchar(50)', N'String', N'0', N'0', null, N'13')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757396858501857280', N'W3CodeInformation', N'Id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757396858556383232', N'W3CodeInformation', N'Code', N'类别编号', N'varchar(20)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757396858661240832', N'W3CodeInformation', N'Name', N'类别名称', N'varchar(50)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757396858707378176', N'W3CodeInformation', N'FatherCode', N'上级类别', N'varchar(20)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757396858808041472', N'W3CodeInformation', N'Hierarchy', N'层级', N'varchar(20)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757396858866761728', N'W3CodeInformation', N'OrderId', N'排序号', N'varchar(20)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757396858917093376', N'W3CodeInformation', N'IsEffective', N'是否有效', N'varchar(4)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757397703213711360', N'W3CodeContent', N'Note', N'通知公告', N'text', N'String', N'0', N'0', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757397703490535424', N'W3CodeContent', N'About', N'学院概况', N'text', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757397703851245568', N'W3CodeContent', N'Major', N'专业信息', N'text', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757397704337784832', N'W3CodeContent', N'Dormitory', N'宿舍信息', N'text', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757397705075982336', N'W3CodeContent', N'Equipment', N'校园设施', N'text', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757397705663184896', N'W3CodeContent', N'Scenery', N'校园风光', N'text', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757397706040672256', N'W3CodeContent', N'SchoolActivity', N'校园活动', N'text', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757397706808229888', N'W3CodeContent', N'TeamActivity', N'社团活动', N'text', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757397707080859648', N'W3CodeContent', N'FAQ', N'常见问题', N'text', N'String', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757397707496095744', N'W3CodeContent', N'Remind', N'报到提醒', N'text', N'String', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757397707579981824', N'W3CodeContent', N'Process', N'报到流程', N'text', N'String', N'0', N'0', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757397707634507776', N'W3CodeContent', N'Others', N'其他', N'text', N'String', N'0', N'0', null, N'12')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757397707680645120', N'W3CodeContent', N'Id', null, N'bigint', N'long', N'0', N'0', null, N'13')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757398253816774656', N'W3Attachment', N'Id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757398254034878464', N'W3Attachment', N'Code', N'类别编号', N'varchar(20)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757398254110375936', N'W3Attachment', N'CodeName', N'类别名称', N'varchar(50)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757398254164901888', N'W3Attachment', N'AttachmentName', N'类别名称', N'varchar(50)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757398254215233536', N'W3Attachment', N'Suffix', N'附件名称', N'varchar(20)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757398254278148096', N'W3Attachment', N'Path', N'路径', N'varchar(200)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757398254345256960', N'W3Attachment', N'DeleteSign', N'删除标记（0正常 1已删除）', N'varchar(4)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757398254529806336', N'W3Attachment', N'Operator', N'上传人', N'varchar(20)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757398254630469632', N'W3Attachment', N'OperatorTime', N'上传时间', N'datetime', N'Date', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757398769804247040', N'W3CodeContentInformation', N'Nation', N'民族', N'varchar(50)', N'String', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757398769904910336', N'W3CodeContentInformation', N'Politicallandscape', N'政治面貌', N'varchar(50)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757398769959436288', N'W3CodeContentInformation', N'HouseholdType', N'户籍类型', N'varchar(50)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757398770013962240', N'W3CodeContentInformation', N'TransportationType', N'交通方式', N'varchar(50)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757398770072682496', N'W3CodeContentInformation', N'HZStation', N'杭州车站', N'varchar(50)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757398770131402752', N'W3CodeContentInformation', N'Id', null, N'bigint', N'long', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757399312568156160', N'W3LetterTemplate', N'Id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757399312626876416', N'W3LetterTemplate', N'Name', N'模板名称', N'varchar(100)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757399312685596672', N'W3LetterTemplate', N'Path', N'所在路径', N'varchar(100)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'757399312748511232', N'W3LetterTemplate', N'IsEffective', N'是否有效', N'varchar(4)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758903241789407232', N'FmFormData', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758903241856516096', N'FmFormData', N'formId', N'表单id', N'bigint', N'long', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758903241906847744', N'FmFormData', N'dataId', N'对应数据id', N'bigint', N'long', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758903242129145856', N'FmFormData', N'saveTime', N'提交时间', N'datetime', N'Date', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758903242405969920', N'FmFormData', N'saveUser', N'创建者', N'varchar(64)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758911518363353088', N'W2WayToSchool', N'Id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758911520846381056', N'W2WayToSchool', N'StudentNumber', N'学号', N'varchar(50)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758911521144176640', N'W2WayToSchool', N'Way', N'交通方式', N'varchar(50)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758911521492303872', N'W2WayToSchool', N'BeginCity', N'出发城市', N'varchar(50)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758911521878179840', N'W2WayToSchool', N'BeginTime', N'出发时间', N'datetime', N'Date', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758911522041757696', N'W2WayToSchool', N'TrainNumber', N'车次', N'varchar(50)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758911522125643776', N'W2WayToSchool', N'ArriveStation', N'到达车站', N'varchar(50)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758911522289221632', N'W2WayToSchool', N'ArriveTime', N'到达车站时间', N'datetime', N'Date', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758911522377302016', N'W2WayToSchool', N'TogetherNumber', N'同行人数', N'varchar(10)', N'String', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758911522494742528', N'W2WayToSchool', N'Remark', N'备注', N'varchar(50)', N'String', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758911522645737472', N'W2WayToSchool', N'IDCardNo', N'身份证号', N'varchar(50)', N'String', N'0', N'0', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758946580349845504', N'FmBuilder', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758946580416954368', N'FmBuilder', N'formMain', N'表单主信息', N'text', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758946580488257536', N'FmBuilder', N'formField', N'表单元素', N'text', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758946580576337920', N'FmBuilder', N'saveTime', N'保存时间', N'datetime', N'Date', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758946580970602496', N'FmBuilder', N'saveUser', N'保存人', N'varchar(64)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758946581037711360', N'FmBuilder', N'updateTime', N'修改时间', N'datetime', N'Date', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758946581121597440', N'FmBuilder', N'updateUser', N'修改人', N'varchar(64)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758946581192900608', N'FmBuilder', N'submitURL', N'表单提交路径', N'varchar(128)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758946581255815168', N'FmBuilder', N'content', N'对应编辑器html', N'text', N'String', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758946581310341120', N'FmBuilder', N'formCode', N'对应表单编码', N'varchar(64)', N'String', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758946581390032896', N'FmBuilder', N'modelName', N'模型/表 名称', N'varchar(64)', N'String', N'0', N'0', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'758946581494890496', N'FmBuilder', N'formName', N'表单标题', N'varchar(64)', N'String', N'0', N'0', null, N'12')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759691002968539136', N'W2Repair', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759691003153088512', N'W2Repair', N'repairType', N'报修类型', N'varchar(64)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759691003211808768', N'W2Repair', N'brokenType', N'故障类型', N'varchar(64)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759691003266334720', N'W2Repair', N'schoolArea', N'所在校区', N'varchar(128)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759691003333443584', N'W2Repair', N'equipmentLocation', N'设备地点', N'varchar(128)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759691003400552448', N'W2Repair', N'attachment', N'照片附件', N'varchar(128)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759691003455078400', N'W2Repair', N'brokenReason', N'故障原因', N'text', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759691003509604352', N'W2Repair', N'reportPerson', N'报修人', N'varchar(64)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759691003559936000', N'W2Repair', N'reportDepartment', N'报修部门', N'varchar(128)', N'String', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759691003622850560', N'W2Repair', N'reportTel', N'报修电话', N'varchar(64)', N'String', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786012162392064', N'W1FreshmenBasicInformation', N'Id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786012304998400', N'W1FreshmenBasicInformation', N'StudentNumber', N'学号', N'varchar(50)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786012447604736', N'W1FreshmenBasicInformation', N'Name', N'姓名', N'varchar(20)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786012493742080', N'W1FreshmenBasicInformation', N'Sex', N'性别', N'varchar(10)', N'String', N'0', N'1', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786012573433856', N'W1FreshmenBasicInformation', N'IDCardNo', N'身份证号', N'varchar(50)', N'String', N'0', N'1', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786012699262976', N'W1FreshmenBasicInformation', N'MajorNo', N'专业编号', N'varchar(50)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786012753788928', N'W1FreshmenBasicInformation', N'ClassNo', N'班级编号', N'varchar(50)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786012799926272', N'W1FreshmenBasicInformation', N'Troops', N'大队', N'varchar(20)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786012850257920', N'W1FreshmenBasicInformation', N'SchoolSystem', N'学制', N'varchar(20)', N'String', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786013068361728', N'W1FreshmenBasicInformation', N'Grade', N'年级', N'varchar(20)', N'String', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786013122887680', N'W1FreshmenBasicInformation', N'DormitoryNo', N'寝室编号', N'varchar(20)', N'String', N'0', N'0', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786013286465536', N'W1FreshmenBasicInformation', N'Nation', N'民族', N'varchar(10)', N'String', N'0', N'0', null, N'12')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786013387128832', N'W1FreshmenBasicInformation', N'Phone', N'手机', N'varchar(50)', N'String', N'0', N'0', null, N'13')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786013454237696', N'W1FreshmenBasicInformation', N'PoliticsStatus', N'政治面貌', N'varchar(255)', N'String', N'0', N'0', null, N'14')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786013588455424', N'W1FreshmenBasicInformation', N'AdmissionNoticeNumber', N'录取通知书编号', N'varchar(256)', N'String', N'0', N'0', null, N'15')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786013676535808', N'W1FreshmenBasicInformation', N'NativePlace', N'籍贯', N'varchar(255)', N'String', N'0', N'0', null, N'16')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786474433413120', N'W1TeacherInformation', N'Id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786474513104896', N'W1TeacherInformation', N'Number', N'教职工号', N'varchar(50)', N'String', N'0', N'1', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786474659905536', N'W1TeacherInformation', N'Name', N'姓名', N'varchar(20)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786474706042880', N'W1TeacherInformation', N'Sex', N'姓BIE', N'varchar(10)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786474857037824', N'W1TeacherInformation', N'IDCardNo', N'身份证', N'varchar(50)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786474928340992', N'W1TeacherInformation', N'Department', N'院系/部门', N'varchar(20)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786474982866944', N'W1TeacherInformation', N'MajorNo', N'专业', N'varchar(50)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786475045781504', N'W1TeacherInformation', N'Post', N'职务', N'varchar(20)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786475163222016', N'W1TeacherInformation', N'ProfessionalTitle', N'职称', N'varchar(20)', N'String', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786475268079616', N'W1TeacherInformation', N'Phone', N'手机', N'varchar(50)', N'String', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786475389714432', N'W1TeacherInformation', N'OfficePhone', N'OfficePhone', N'varchar(30)', N'String', N'0', N'0', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786475456823296', N'W1TeacherInformation', N'PersonalIntroduction', N'个人简介', N'varchar(500)', N'String', N'0', N'0', null, N'12')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786475553292288', N'W1TeacherInformation', N'PersonalHonor', N'荣誉', N'varchar(500)', N'String', N'0', N'0', null, N'13')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786475729453056', N'W1TeacherInformation', N'UpdateTime', N'信息更新时间', N'datetime', N'Date', N'0', N'0', null, N'14')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786475821727744', N'W1TeacherInformation', N'DateOfBirth', N'出生年月', N'varchar(256)', N'String', N'0', N'0', null, N'15')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786475897225216', N'W1TeacherInformation', N'Nation', N'民族', N'varchar(256)', N'String', N'0', N'0', null, N'16')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786475960139776', N'W1TeacherInformation', N'NativePlace', N'籍贯', N'varchar(255)', N'String', N'0', N'0', null, N'17')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786476039831552', N'W1TeacherInformation', N'StateOfHealth', N'健康状态', N'varchar(255)', N'String', N'0', N'0', null, N'18')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786476098551808', N'W1TeacherInformation', N'PoliticsStatus', N'政治面貌', N'varchar(255)', N'String', N'0', N'0', null, N'19')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786476199215104', N'W1TeacherInformation', N'TimeToTork', N'参加工作时间', N'varchar(256)', N'String', N'0', N'0', null, N'20')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786476257935360', N'W1TeacherInformation', N'OfficeTelephone', N'办公室电话', N'varchar(255)', N'String', N'0', N'0', null, N'21')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786476346015744', N'W1TeacherInformation', N'Education', N'学历', N'varchar(255)', N'String', N'0', N'0', null, N'22')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786476417318912', N'W1TeacherInformation', N'Cornet', N'短号', N'varchar(255)', N'String', N'0', N'0', null, N'23')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786476593479680', N'W1TeacherInformation', N'QQ', null, N'varchar(255)', N'String', N'0', N'0', null, N'24')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786476660588544', N'W1TeacherInformation', N'WeChat', N'微信', N'varchar(255)', N'String', N'0', N'0', null, N'25')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786476794806272', N'W1TeacherInformation', N'Email', null, N'varchar(255)', N'String', N'0', N'0', null, N'26')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786476929024000', N'W1TeacherInformation', N'Picture', N'照片', N'varchar(255)', N'String', N'0', N'0', null, N'27')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786477042270208', N'W1TeacherInformation', N'EducationExperience', N'受教育经历', N'text', N'String', N'0', N'0', null, N'28')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786477088407552', N'W1TeacherInformation', N'WorkExperience', N'工作经历', N'text', N'String', N'0', N'0', null, N'29')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786477159710720', N'W1TeacherInformation', N'Training', N'培训经历', N'text', N'String', N'0', N'0', null, N'30')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786477264568320', N'W1TeacherInformation', N'ScientificPayoffs', N'科研成果', N'text', N'String', N'0', N'0', null, N'31')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786477386203136', N'W1TeacherInformation', N'Carlson ', N'所获奖项', N'text', N'String', N'0', N'0', null, N'32')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786477432340480', N'W1TeacherInformation', N'Cjsjyshd', N'参加市级以上活动', N'text', N'String', N'0', N'0', null, N'33')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759786477524615168', N'W1TeacherInformation', N'SubjectOrientation', N'学科方向', N'varchar(255)', N'String', N'0', N'0', null, N'34')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787683387015168', N'W1DormitoryInformation', N'Id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787683445735424', N'W1DormitoryInformation', N'DormitoryNo', N'寝室编号', N'varchar(20)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787683533815808', N'W1DormitoryInformation', N'DormitoryName', N'寝室名称', N'varchar(20)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787683621896192', N'W1DormitoryInformation', N'BuildingNo', N'楼号', N'varchar(20)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787683751919616', N'W1DormitoryInformation', N'FloorNo', N'层号', N'varchar(20)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787683865165824', N'W1DormitoryInformation', N'RoomNo', N'房号', N'varchar(20)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787683953246208', N'W1DormitoryInformation', N'PsitionInstruction', N'位置说明', N'text', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787684003577856', N'W1DormitoryInformation', N'DormitoryType', N'宿舍类型（男女宿舍）', N'varchar(255)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787979479711744', N'W1MajorInformation', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787979551014912', N'W1MajorInformation', N'MajorNo', N'专业编号', N'varchar(50)', N'String', N'0', N'1', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787979655872512', N'W1MajorInformation', N'MajorName', N'专业名称', N'varchar(50)', N'String', N'0', N'1', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787979714592768', N'W1MajorInformation', N'Department', N'所属院系', N'varchar(50)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787979811061760', N'W1MajorInformation', N'FatherMajor', N'所属大专业', N'varchar(50)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787979853004800', N'W1MajorInformation', N'Diploma', N'本/专科', N'varchar(50)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787979928502272', N'W1MajorInformation', N'SchoolSystem', N'学制', N'varchar(20)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787980100468736', N'W1MajorInformation', N'Degree', N'学位', N'varchar(20)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787980268240896', N'W1MajorInformation', N'DetailedInformation', N'详细介绍', N'text', N'String', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787980381487104', N'W1MajorInformation', N'TrainObjective', N'培养目标', N'text', N'String', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787980452790272', N'W1MajorInformation', N'MajorHonor', N'专业荣誉', N'text', N'String', N'0', N'0', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787980498927616', N'W1MajorInformation', N'CurriculumProvision', N'课程设置', N'text', N'String', N'0', N'0', null, N'12')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787980603785216', N'W1MajorInformation', N'MasterInstructor', N'专业讲师', N'text', N'String', N'0', N'0', null, N'13')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787980683476992', N'W1MajorInformation', N'Remake', N'备注', N'text', N'String', N'0', N'0', null, N'14')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787980754780160', N'W1MajorInformation', N'image1', null, N'varchar(255)', N'String', N'0', N'0', null, N'15')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787980863832064', N'W1MajorInformation', N'image2', null, N'varchar(255)', N'String', N'0', N'0', null, N'16')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787980993855488', N'W1MajorInformation', N'image3', null, N'varchar(255)', N'String', N'0', N'0', null, N'17')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787981044187136', N'W1MajorInformation', N'image4', null, N'varchar(255)', N'String', N'0', N'0', null, N'18')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'759787981115490304', N'W1MajorInformation', N'image5', null, N'varchar(255)', N'String', N'0', N'0', null, N'19')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'760663258318241792', N'W2PoliceEquipmentBook', N'Id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'760663258372767744', N'W2PoliceEquipmentBook', N'StudentNumber', N'学号', N'varchar(50)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'760663258448265216', N'W2PoliceEquipmentBook', N'IDCardNo', N'身份证', N'varchar(50)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'760663258494402560', N'W2PoliceEquipmentBook', N'ClothSize_long', N'服装尺码-长袖', N'varchar(20)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'760663258548928512', N'W2PoliceEquipmentBook', N'ShoeSize', N'鞋码', N'varchar(20)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'760663258708312064', N'W2PoliceEquipmentBook', N'ClothSize_short', N'服装尺码-短袖', N'varchar(20)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'760663258762838016', N'W2PoliceEquipmentBook', N'ClothSize_sport', N'服装尺码-运动', N'varchar(20)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'760663258842529792', N'W2PoliceEquipmentBook', N'ClothSize_micai', N'服装尺码-迷彩', N'varchar(20)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763551118465695744', N'YX_studentRegister', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763551118633467904', N'YX_studentRegister', N'studentId', N'学生ID', N'bigint', N'long', N'0', N'0', N'', N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763551118713159680', N'YX_studentRegister', N'processId', N'报到项ID', N'bigint', N'long', N'0', N'0', N'', N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763551118776074240', N'YX_studentRegister', N'state', N'完成状态', N'int', N'int', N'0', N'0', N'', N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763551118847377408', N'YX_studentRegister', N'completeTime', N'完成时间', N'datetime', N'Date', N'0', N'0', N'', N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763554101123350528', N'YX_educationExperience', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763554101177876480', N'YX_educationExperience', N'studentId', N'学生ID', N'bigint', N'long', N'0', N'0', N'', N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763554101236596736', N'YX_educationExperience', N'schoolName', N'学生名称', N'varchar(400)', N'String', N'0', N'0', N'', N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763554101295316992', N'YX_educationExperience', N'eduType', N'教育类型', N'varchar(100)', N'String', N'0', N'0', N'', N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763554101349842944', N'YX_educationExperience', N'startDate', N'开始时间', N'datetime', N'Date', N'0', N'0', N'', N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763554101408563200', N'YX_educationExperience', N'endDate', N'结束时间', N'datetime', N'Date', N'0', N'0', N'', N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763554101463089152', N'YX_educationExperience', N'penalties', N'奖惩情况', N'text', N'String', N'0', N'0', N'', N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763555369862561792', N'YX_homePartys', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763555370076471296', N'YX_homePartys', N'studentId', N'学生ID', N'bigint', N'long', N'0', N'0', N'', N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763555370143580160', N'YX_homePartys', N'name', N'姓名', N'varchar(100)', N'String', N'0', N'0', N'', N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763555370202300416', N'YX_homePartys', N'relation', N'关系', N'varchar(100)', N'String', N'0', N'0', N'', N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763555370261020672', N'YX_homePartys', N'age', N'年龄', N'int', N'int', N'0', N'0', N'', N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763555370332323840', N'YX_homePartys', N'profession', N'职业', N'varchar(100)', N'String', N'0', N'0', N'', N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763555370391044096', N'YX_homePartys', N'politicalOrientation', N'政治面貌', N'varchar(100)', N'String', N'0', N'0', N'', N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763555370449764352', N'YX_homePartys', N'telephone', N'联系电话', N'varchar(100)', N'String', N'0', N'0', N'', N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763573588090421248', N'YX_studentSecurity', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763573588241416192', N'YX_studentSecurity', N'userId', N'用户ID', N'bigint', N'long', N'0', N'0', N'', N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763573588329496576', N'YX_studentSecurity', N'hasBindPhone', N'是否绑定手机', N'int', N'int', N'0', N'0', N'', N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763573588384022528', N'YX_studentSecurity', N'bindPhoneNumber', N'绑定手机号码', N'varchar(20)', N'String', N'0', N'0', N'', N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763573588459520000', N'YX_studentSecurity', N'hasGesturePassword', N'是否开户手势密码', N'int', N'int', N'0', N'0', N'', N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763573588593737728', N'YX_studentSecurity', N'gesturePassword', N'手势密码', N'varchar(20)', N'String', N'0', N'0', N'', N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763605054061019136', N'YX_residenceInfo', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763605054224596992', N'YX_residenceInfo', N'studentId', N'学生ID', N'bigint', N'long', N'0', N'0', N'', N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763605054283317248', N'YX_residenceInfo', N'origHouseholdType', N'原户口性质', N'varchar(100)', N'String', N'0', N'0', N'', N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763605054329454592', N'YX_residenceInfo', N'origHouseAddress', N'原户口所在地', N'varchar(1000)', N'String', N'0', N'0', N'', N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763605054388174848', N'YX_residenceInfo', N'isTransfer', N'是否迁移', N'int', N'int', N'0', N'0', N'', N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763605054434312192', N'YX_residenceInfo', N'proofMaterial', N'迁移证明附件', N'varchar(4000)', N'String', N'0', N'0', N'', N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763605054757273600', N'YX_residenceInfo', N'state', N'验证状态（0未验证 1已验证）', N'int', N'int', N'0', N'0', N'', N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763605894926696448', N'YX_bedroomStudents', N'id', N'', N'bigint', N'long', N'1', N'1', N'', N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763605895169966080', N'YX_bedroomStudents', N'roomId', N'寝室ID', N'bigint', N'long', N'0', N'0', N'', N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763605895237074944', N'YX_bedroomStudents', N'studentId', N'学生id', N'bigint', N'long', N'0', N'0', N'', N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763605895299989504', N'YX_bedroomStudents', N'state', N'状态', N'int', N'int', N'0', N'0', N'', N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763605895358709760', N'YX_bedroomStudents', N'inTime', N'加入时间', N'datetime', N'Date', N'0', N'0', N'', N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763605895417430016', N'YX_bedroomStudents', N'outTime', N'退出时间', N'datetime', N'Date', N'0', N'0', N'', N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763606296371920896', N'YX_classStudents', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763606296510332928', N'YX_classStudents', N'classId', N'班级ID', N'bigint', N'long', N'0', N'0', N'', N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763606296564858880', N'YX_classStudents', N'studentId', N'学生ID', N'bigint', N'long', N'0', N'0', N'', N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763606296615190528', N'YX_classStudents', N'state', N'状态', N'int', N'int', N'0', N'0', N'', N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763606296707465216', N'YX_classStudents', N'inTime', N'加入时间', N'datetime', N'Date', N'0', N'0', N'', N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763606296766185472', N'YX_classStudents', N'outTime', N'退出时间', N'datetime', N'Date', N'0', N'0', N'', N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763606750816370688', N'YX_bedroomPhotos', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763606751902695424', N'YX_bedroomPhotos', N'roomId', N'寝室ID', N'bigint', N'long', N'0', N'0', N'', N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763606752531841024', N'YX_bedroomPhotos', N'title', N'照片标题', N'varchar(400)', N'String', N'0', N'0', N'', N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763606753198735360', N'YX_bedroomPhotos', N'photo', N'照片', N'varchar(200)', N'String', N'0', N'0', N'', N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763606754608021504', N'YX_bedroomPhotos', N'instruc', N'照片介绍', N'varchar(4000)', N'String', N'0', N'0', N'', N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763606754704490496', N'YX_bedroomPhotos', N'orderFlag', N'排序号', N'bigint', N'long', N'0', N'0', N'', N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763606754880651264', N'YX_bedroomPhotos', N'updator', N'上传人', N'varchar(100)', N'String', N'0', N'0', N'', N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763606754964537344', N'YX_bedroomPhotos', N'updateTime', N'上传时间', N'datetime', N'Date', N'0', N'0', N'', N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763607994062602240', N'YX_schoolInfo', N'ID', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763607994238763008', N'YX_schoolInfo', N'schoolName', N'学校名称', N'varchar(200)', N'String', N'0', N'0', N'', N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763607994356203520', N'YX_schoolInfo', N'shortName', N'学校简称', N'varchar(200)', N'String', N'0', N'0', N'', N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763607994503004160', N'YX_schoolInfo', N'breafIntroc', N'学校简介', N'text', N'String', N'0', N'0', N'', N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763611360549404672', N'YX_classTeachers', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763611360675233792', N'YX_classTeachers', N'classId', N'班级ID', N'bigint', N'long', N'0', N'0', N'', N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763611360729759744', N'YX_classTeachers', N'teacherId', N'教师ID', N'bigint', N'long', N'0', N'0', N'', N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763611360788480000', N'YX_classTeachers', N'job', N'职责', N'varchar(100)', N'String', N'0', N'0', N'', N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763611360843005952', N'YX_classTeachers', N'state', N'状态', N'int', N'int', N'0', N'0', N'', N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763611360985612288', N'YX_classTeachers', N'inTime', N'加入时间', N'datetime', N'Date', N'0', N'0', N'', N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763611361044332544', N'YX_classTeachers', N'outTime', N'退出时间', N'datetime', N'Date', N'0', N'0', N'', N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763611739039203328', N'YX_department', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763611739873869824', N'YX_department', N'schoolId', N'学校ID', N'bigint', N'long', N'0', N'0', N'', N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763611740016476160', N'YX_department', N'deptName', N'院系名称', N'varchar(200)', N'String', N'0', N'0', N'', N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763612008904916992', N'YX_classInfo', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763612009261432832', N'YX_classInfo', N'classCode', N'班级编号', N'varchar(100)', N'String', N'0', N'0', N'', N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763612009311764480', N'YX_classInfo', N'className', N'班级编号', N'varchar(400)', N'String', N'0', N'0', N'', N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763612009374679040', N'YX_classInfo', N'brigade', N'大队', N'varchar(100)', N'String', N'0', N'0', N'', N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763612009429204992', N'YX_classInfo', N'deptId', N'院系', N'bigint', N'long', N'0', N'0', N'', N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763612009483730944', N'YX_classInfo', N'speId', N'专业', N'bigint', N'long', N'0', N'0', N'', N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763612009538256896', N'YX_classInfo', N'grade', N'年级', N'int', N'int', N'0', N'0', N'', N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763612009647308800', N'YX_classInfo', N'班次', null, N'varchar(10)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763614600405975040', N'YX_schoolView', N'ID', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763614600565358592', N'YX_schoolView', N'schoolId', N'学校ID', N'bigint', N'long', N'0', N'0', N'', N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763614600615690240', N'YX_schoolView', N'themeName', N'主题名称', N'varchar(100)', N'String', N'0', N'0', N'', N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763614600674410496', N'YX_schoolView', N'themeThumbnail', N'主题缩略图', N'varchar(200)', N'String', N'0', N'0', N'', N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763614600745713664', N'YX_schoolView', N'themeInstroc', N'主题简介', N'text', N'String', N'0', N'0', N'', N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763614600804433920', N'YX_schoolView', N'orderFlag', N'排序号', N'bigint', N'long', N'0', N'0', N'', N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763616602863173632', N'YX_schoolViewDetail', N'ID', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763616602963836928', N'YX_schoolViewDetail', N'themeId', N'主题ID', N'bigint', N'long', N'0', N'0', N'', N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763616603026751488', N'YX_schoolViewDetail', N'title', N'照片标题', N'varchar(200)', N'String', N'0', N'0', N'', N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763616603081277440', N'YX_schoolViewDetail', N'photo', N'照片', N'varchar(200)', N'String', N'0', N'0', N'', N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763616603123220480', N'YX_schoolViewDetail', N'photoInstroc', N'照片简介', N'text', N'String', N'0', N'0', N'', N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763616603177746432', N'YX_schoolViewDetail', N'uploader', N'上传人', N'varchar(100)', N'String', N'0', N'0', N'', N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763616603228078080', N'YX_schoolViewDetail', N'updateTime', N'上传时间', N'datetime', N'Date', N'0', N'0', N'', N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763616603303575552', N'YX_schoolViewDetail', N'orderFlag', N'排序号', N'bigint', N'long', N'0', N'0', N'', N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763617728538869760', N'YX_schoolEvent', N'ID', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763617728715030528', N'YX_schoolEvent', N'schoolId', N'学校ID', N'bigint', N'long', N'0', N'0', N'', N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763617728807305216', N'YX_schoolEvent', N'title', N'活动标题', N'varchar(400)', N'String', N'0', N'0', N'', N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763617728866025472', N'YX_schoolEvent', N'subTitle', N'活动副标题', N'varchar(400)', N'String', N'0', N'0', N'', N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763617728912162816', N'YX_schoolEvent', N'photo', N'活动图片', N'varchar(200)', N'String', N'0', N'0', N'', N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763617728979271680', N'YX_schoolEvent', N'instroc', N'活动简介', N'text', N'String', N'0', N'0', N'', N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763618079644057600', N'YX_communityEvent', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763618079816024064', N'YX_communityEvent', N'schoolId', N'学校ID', N'bigint', N'long', N'0', N'0', N'', N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763618079870550016', N'YX_communityEvent', N'title', N'活动标题', N'varchar(400)', N'String', N'0', N'0', N'', N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763618079920881664', N'YX_communityEvent', N'subTitle', N'活动副标题', N'varchar(400)', N'String', N'0', N'0', N'', N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763618079975407616', N'YX_communityEvent', N'photo', N'活动图片', N'varchar(200)', N'String', N'0', N'0', N'', N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763618080029933568', N'YX_communityEvent', N'instroc', N'活动简介', N'text', N'String', N'0', N'0', N'', N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763954431384354816', N'temp1', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763954431896059904', N'temp1', N'code', null, N'varchar(128)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763954431950585856', N'temp1', N'name', null, N'varchar(128)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763954432009306112', N'temp1', N'parentId', null, N'bigint', N'long', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763954432059637760', N'temp1', N'banner', null, N'varchar(128)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763954432114163712', N'temp1', N'managerCode', null, N'varchar(64)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763954432168689664', N'temp1', N'managerAuth', null, N'varchar(256)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763954432227409920', N'temp1', N'description', null, N'text', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763954432286130176', N'temp1', N'tag', null, N'varchar(256)', N'String', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763954432340656128', N'temp1', N'sortBy', null, N'bigint', N'long', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763954432395182080', N'temp1', N'sort', null, N'varchar(64)', N'String', N'0', N'0', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763954432458096640', N'temp1', N'departMent', null, N'varchar(64)', N'String', N'0', N'0', null, N'12')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763954432500039680', N'temp1', N'createTime', null, N'datetime', N'Date', N'0', N'0', null, N'13')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763954432546177024', N'temp1', N'ableTime', null, N'datetime', N'Date', N'0', N'0', null, N'14')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'763954432604897280', N'temp1', N'orderId', null, N'bigint', N'long', N'0', N'0', null, N'15')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003140126113792', N'YX_teacherInfo', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003146971217920', N'YX_teacherInfo', N'jobNumber', null, N'varchar(100)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003147034132480', N'YX_teacherInfo', N'realName', null, N'varchar(100)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003147155767296', N'YX_teacherInfo', N'sex', null, N'varchar(10)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003147206098944', N'YX_teacherInfo', N'idNumber', null, N'varchar(20)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003147264819200', N'YX_teacherInfo', N'deptId', null, N'bigint', N'long', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003147306762240', N'YX_teacherInfo', N'speId', null, N'bigint', N'long', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003147369676800', N'YX_teacherInfo', N'job', null, N'varchar(100)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003147436785664', N'YX_teacherInfo', N'professor', null, N'varchar(100)', N'String', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003147482923008', N'YX_teacherInfo', N'telphone', null, N'varchar(100)', N'String', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003147537448960', N'YX_teacherInfo', N'workphone', null, N'varchar(100)', N'String', N'0', N'0', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003147587780608', N'YX_teacherInfo', N'instroc', null, N'text', N'String', N'0', N'0', null, N'12')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003147646500864', N'YX_teacherInfo', N'honor', null, N'text', N'String', N'0', N'0', null, N'13')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003147701026816', N'YX_teacherInfo', N'updateTime', null, N'datetime', N'Date', N'0', N'0', null, N'14')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003147763941376', N'YX_teacherInfo', N'userName', null, N'varchar(100)', N'String', N'0', N'0', null, N'15')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003147822661632', N'YX_teacherInfo', N'birthday', null, N'varchar(255)', N'String', N'0', N'0', null, N'16')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003147889770496', N'YX_teacherInfo', N'nation', null, N'varchar(255)', N'String', N'0', N'0', null, N'17')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003147956879360', N'YX_teacherInfo', N'nativePlace', null, N'varchar(255)', N'String', N'0', N'0', null, N'18')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003148023988224', N'YX_teacherInfo', N'healthState', null, N'varchar(255)', N'String', N'0', N'0', null, N'19')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003148078514176', N'YX_teacherInfo', N'politicalOrientation', null, N'varchar(255)', N'String', N'0', N'0', null, N'20')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003148137234432', N'YX_teacherInfo', N'timeToTork', null, N'varchar(1)', N'String', N'0', N'0', null, N'21')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003148195954688', N'YX_teacherInfo', N'subjectOrientation', null, N'varchar(255)', N'String', N'0', N'0', null, N'22')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003148250480640', N'YX_teacherInfo', N'education', null, N'varchar(255)', N'String', N'0', N'0', null, N'23')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003148313395200', N'YX_teacherInfo', N'cornet', null, N'varchar(255)', N'String', N'0', N'0', null, N'24')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003148380504064', N'YX_teacherInfo', N'qq', null, N'varchar(255)', N'String', N'0', N'0', null, N'25')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003148430835712', N'YX_teacherInfo', N'weChat', null, N'varchar(255)', N'String', N'0', N'0', null, N'26')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764003148489555968', N'YX_teacherInfo', N'Email', null, N'varchar(255)', N'String', N'0', N'0', null, N'27')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010099596328960', N'JL_components', N'id', N'主键', N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010099747323904', N'JL_components', N'name', N'组件名称', N'varchar(400)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010099801849856', N'JL_components', N'description', N'组件描述', N'varchar(4000)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010099847987200', N'JL_components', N'creator', N'创建人', N'varchar(100)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010099894124544', N'JL_components', N'createTime', N'创建时间', N'datetime', N'Date', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010099969622016', N'JL_components', N'state', N'状态', N'int', N'int', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010100091256832', N'JL_components', N'tableName', N'组件表', N'varchar(100)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010146392178688', N'JL_favorPosts', N'id', N'主键', N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010146438316032', N'JL_favorPosts', N'userCode', N'收藏人', N'varchar(100)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010146492841984', N'JL_favorPosts', N'postId', N'贴子ID', N'bigint', N'long', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010146547367936', N'JL_favorPosts', N'favorTime', N'收藏时间', N'datetime', N'Date', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010204558786560', N'JL_jobRight', N'id', N'主键', N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010204722364416', N'JL_jobRight', N'jobId', N'职责ID', N'bigint', N'long', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010204785278976', N'JL_jobRight', N'rightId', N'权限ID', N'bigint', N'long', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010231213588480', N'JL_planRights', N'id', N'主键', N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010231268114432', N'JL_planRights', N'name', N'权限名称', N'varchar(400)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010231318446080', N'JL_planRights', N'state', N'状态', N'int', N'int', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010231368777728', N'JL_planRights', N'orderFlag', N'排序号', N'bigint', N'long', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010268853272576', N'JL_plantJobs', N'id', N'主键', N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010268903604224', N'JL_plantJobs', N'name', N'职责名称', N'varchar(400)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010268962324480', N'JL_plantJobs', N'state', N'状态', N'int', N'int', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010269033627648', N'JL_plantJobs', N'orderFlag', N'排序号', N'bigint', N'long', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010289136926720', N'JL_plantLabels', N'id', N'主键', N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010289183064064', N'JL_plantLabels', N'labelName', N'名称', N'varchar(400)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010289254367232', N'JL_plantLabels', N'plantId', N'板块ID', N'bigint', N'long', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010289308893184', N'JL_plantLabels', N'orderFlag', N'排序号', N'bigint', N'long', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010289359224832', N'JL_plantLabels', N'createTime', N'创建日期', N'datetime', N'Date', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010289422139392', N'JL_plantLabels', N'creator', N'创建人', N'varchar(100)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010289472471040', N'JL_plantLabels', N'state', N'状态', N'int', N'int', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010306484568064', N'JL_plantManagers', N'id', N'主键', N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010306539094016', N'JL_plantManagers', N'plantId', N'版块ID', N'bigint', N'long', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010306606202880', N'JL_plantManagers', N'userCode', N'管理员', N'varchar(100)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010306652340224', N'JL_plantManagers', N'jobId', N'职责ID', N'bigint', N'long', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010326743056384', N'JL_plantOrder', N'id', N'主键', N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010326793388032', N'JL_plantOrder', N'userCode', N'订阅人', N'varchar(100)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010326906634240', N'JL_plantOrder', N'orderTime', N'订阅时间', N'datetime', N'Date', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010326956965888', N'JL_plantOrder', N'plantId', N'版块ID', N'bigint', N'long', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010477771554816', N'JL_questAnswerDetail', N'id', N'主键', N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010477830275072', N'JL_questAnswerDetail', N'questId', N'问卷主题', N'bigint', N'long', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010477880606720', N'JL_questAnswerDetail', N'optionId', N'题目', N'bigint', N'long', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010477935132672', N'JL_questAnswerDetail', N'answer', N'答案', N'varchar(4000)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010477985464320', N'JL_questAnswerDetail', N'userCode', N'提交人', N'varchar(100)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010478035795968', N'JL_questAnswerDetail', N'createTime', N'提交时间', N'datetime', N'Date', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010538911924224', N'JL_registerDetail', N'id', N'主键', N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010538966450176', N'JL_registerDetail', N'postId', N'报名主题', N'bigint', N'long', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010539016781824', N'JL_registerDetail', N'userCode', N'报名人', N'varchar(100)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010539067113472', N'JL_registerDetail', N'registerTime', N'报名时间', N'datetime', N'Date', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010576186703872', N'JL_voteDetial', N'id', N'主键', N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010576245424128', N'JL_voteDetial', N'optionId', N'投票选项ID', N'bigint', N'long', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010576333504512', N'JL_voteDetial', N'userCode', N'投票人', N'varchar(100)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010576450945024', N'JL_voteDetial', N'voteTime', N'投票时间', N'datetime', N'Date', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764010576509665280', N'JL_voteDetial', N'postId', N'投票主题', N'bigint', N'long', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764743651245948928', N'YX_bedroomInfo', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764743653653479424', N'YX_bedroomInfo', N'roomCode', null, N'varchar(100)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764743653712199680', N'YX_bedroomInfo', N'roomName', null, N'varchar(400)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764743653817057280', N'YX_bedroomInfo', N'buildName', null, N'varchar(100)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764743654353928192', N'YX_bedroomInfo', N'floor', null, N'varchar(100)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764743654421037056', N'YX_bedroomInfo', N'door', null, N'varchar(100)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764743654530088960', N'YX_bedroomInfo', N'remark', null, N'varchar(4000)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764743654580420608', N'YX_bedroomInfo', N'dormitoryType', N'宿舍类型 ', N'varchar(255)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764843477077852160', N'YX_specialInfo', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764843477413396480', N'YX_specialInfo', N'schoolId', null, N'bigint', N'long', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764843477497282560', N'YX_specialInfo', N'deptId', null, N'bigint', N'long', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764843477589557248', N'YX_specialInfo', N'speName', null, N'varchar(100)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764843477652471808', N'YX_specialInfo', N'speShortName', null, N'varchar(100)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764843477757329408', N'YX_specialInfo', N'speCode', null, N'varchar(100)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764843477937684480', N'YX_specialInfo', N'duration', null, N'int', N'int', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764843478143205376', N'YX_specialInfo', N'degree', null, N'varchar(10)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764843478185148416', N'YX_specialInfo', N'speInstroc', null, N'text', N'String', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764843478260645888', N'YX_specialInfo', N'teachTarget', null, N'varchar(4000)', N'String', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764843478302588928', N'YX_specialInfo', N'honor', null, N'varchar(4000)', N'String', N'0', N'0', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764843478357114880', N'YX_specialInfo', N'image1', null, N'varchar(255)', N'String', N'0', N'0', null, N'12')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764843478415835136', N'YX_specialInfo', N'image2', null, N'varchar(255)', N'String', N'0', N'0', null, N'13')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764843478474555392', N'YX_specialInfo', N'image3', null, N'varchar(255)', N'String', N'0', N'0', null, N'14')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764843478541664256', N'YX_specialInfo', N'image4', null, N'varchar(255)', N'String', N'0', N'0', null, N'15')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'764843478596190208', N'YX_specialInfo', N'image5', null, N'varchar(255)', N'String', N'0', N'0', null, N'16')
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
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766218671214297088', N'JL_praisePosts', N'id', N'主键', N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766218671277211648', N'JL_praisePosts', N'userCode', N'点赞人', N'varchar(100)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766218671331737600', N'JL_praisePosts', N'postId', N'贴子ID', N'bigint', N'long', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766218671382069248', N'JL_praisePosts', N'praiseTime', N'点赞时间', N'datetime', N'Date', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766218671453372416', N'JL_praisePosts', N'type', N'点赞类型  1帖子   2回帖', N'int', N'int', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766596898843787264', N'JL_plantInfo', N'id', N'主键', N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766596899011559424', N'JL_plantInfo', N'plantCode', N'板块编码', N'varchar(400)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766596899074473984', N'JL_plantInfo', N'plantName', N'板块名称', N'varchar(400)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766596899124805632', N'JL_plantInfo', N'plantBanner_pc', N'板块banner_pc', N'varchar(400)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766596899183525888', N'JL_plantInfo', N'parentId', N'上级板块', N'bigint', N'long', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766596899242246144', N'JL_plantInfo', N'remark', N'板块说明', N'varchar(4000)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766596899296772096', N'JL_plantInfo', N'state', N'板块状态', N'int', N'int', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766596899351298048', N'JL_plantInfo', N'createTime', N'板块创建时间', N'datetime', N'Date', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766596899401629696', N'JL_plantInfo', N'creator', N'板块创建人', N'varchar(100)', N'String', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766596899447767040', N'JL_plantInfo', N'createDept', N'板块创建部门', N'bigint', N'long', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766596899502292992', N'JL_plantInfo', N'schoolId', N'学校ID', N'bigint', N'long', N'0', N'0', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766596899565207552', N'JL_plantInfo', N'orderFlag', N'排序号', N'bigint', N'long', N'0', N'0', null, N'12')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766596899619733504', N'JL_plantInfo', N'recordOrderColumn', N'内容排序字段', N'varchar(100)', N'String', N'0', N'0', null, N'13')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766596899716202496', N'JL_plantInfo', N'recordOrderStyle', N'内容排序方式', N'varchar(10)', N'String', N'0', N'0', null, N'14')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766596899804282880', N'JL_plantInfo', N'canComponent', N'允许添加组件', N'int', N'int', N'0', N'0', null, N'15')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766596899854614528', N'JL_plantInfo', N'plantBanner_m', N'板块banner-手机', N'varchar(400)', N'String', N'0', N'0', null, N'16')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766596899917529088', N'JL_plantInfo', N'plantIcon_pc', N'版块图标-pc', N'varchar(400)', N'String', N'0', N'0', null, N'17')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766596899976249344', N'JL_plantInfo', N'plantIcon_m', N'版块图标-手机', N'varchar(400)', N'String', N'0', N'0', null, N'18')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766887950897119232', N'YX_studentCommunications', N'ID', N'', N'bigint', N'long', N'1', N'1', N'', N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766887951064891392', N'YX_studentCommunications', N'userId', N'', N'bigint', N'long', N'0', N'0', N'', N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766887951127805952', N'YX_studentCommunications', N'telephone', N'', N'varchar(20)', N'String', N'0', N'0', N'', N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766887951186526208', N'YX_studentCommunications', N'qqNumber', N'', N'varchar(20)', N'String', N'0', N'0', N'', N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766887951257829376', N'YX_studentCommunications', N'weChatNumber', null, N'varchar(100)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766887951316549632', N'YX_studentCommunications', N'email', N'邮箱', N'varchar(200)', N'String', N'0', N'0', N'', N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766887951371075584', N'YX_studentCommunications', N'homeAddress', null, N'varchar(1000)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766887951454961664', N'YX_studentCommunications', N'postCode', null, N'varchar(20)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766887951509487616', N'YX_studentCommunications', N'homePhone', null, N'varchar(20)', N'String', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'766887951601762304', N'YX_studentCommunications', N'cornetphone', N'手机短号', N'varchar(20)', N'String', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'767611250191368192', N'YX_StudentInfo', N'ID', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'767611250438832128', N'YX_StudentInfo', N'userName', null, N'varchar(100)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'767611250514329600', N'YX_StudentInfo', N'studentCode', null, N'varchar(20)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'767611250577244160', N'YX_StudentInfo', N'idNumber', null, N'varchar(20)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'767611250648547328', N'YX_StudentInfo', N'sex', null, N'varchar(20)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'767611250765987840', N'YX_StudentInfo', N'birthday', null, N'varchar(65)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'767611250862456832', N'YX_StudentInfo', N'nativePlace', N'户籍', N'varchar(20)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'767611250946342912', N'YX_StudentInfo', N'nation', null, N'varchar(20)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'767611251009257472', N'YX_StudentInfo', N'speciaId', null, N'bigint', N'long', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'767611251063783424', N'YX_StudentInfo', N'className', null, N'varchar(20)', N'String', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'767611251118309376', N'YX_StudentInfo', N'comeYear', null, N'varchar(20)', N'String', N'0', N'0', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'767611251248332800', N'YX_StudentInfo', N'politicalOrientation', null, N'varchar(100)', N'String', N'0', N'0', null, N'12')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'767611251315441664', N'YX_StudentInfo', N'healthState', null, N'varchar(100)', N'String', N'0', N'0', null, N'13')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'767611251420299264', N'YX_StudentInfo', N'hasAuth', N'是否认证1认证，0未认证', N'int', N'int', N'0', N'0', null, N'14')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'767611251487408128', N'YX_StudentInfo', N'authTime', null, N'datetime', N'Date', N'0', N'0', null, N'15')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'767611251550322688', N'YX_StudentInfo', N'portrait', N'头像', N'varchar(255)', N'String', N'0', N'0', null, N'16')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'767611251625820160', N'YX_StudentInfo', N'type', N'学生类型', N'varchar(255)', N'String', N'0', N'0', null, N'17')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'767611251692929024', N'YX_StudentInfo', N'isOpen', N'是否隐私', N'varchar(2)', N'String', N'0', N'0', null, N'18')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'770443144536784896', N'JL_replyInfo', N'id', N'主键', N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'770443144687779840', N'JL_replyInfo', N'postId', N'贴子ID', N'bigint', N'long', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'770443144738111488', N'JL_replyInfo', N'content', N'回贴内容', N'text', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'770443144784248832', N'JL_replyInfo', N'replyer', N'回贴人', N'varchar(100)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'770443144830386176', N'JL_replyInfo', N'replyTime', N'回贴时间', N'datetime', N'Date', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'770443144884912128', N'JL_replyInfo', N'praiseCount', N'点赞数', N'bigint', N'long', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'770443145648275456', N'JL_replyInfo', N'contentText', N'回贴内容-纯文本', N'text', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'770443145753133056', N'JL_replyInfo', N'isRead', N'是否已读', N'int', N'int', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'770891447904763904', N'YX_registerProcess', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'770891448001232896', N'YX_registerProcess', N'name', null, N'varchar(400)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'770891448055758848', N'YX_registerProcess', N'orderFlag', null, N'bigint', N'long', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'770891448114479104', N'YX_registerProcess', N'icon', N'图标', N'varchar(100)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'770891448164810752', N'YX_registerProcess', N'content', N'流程说明', N'varchar(1000)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'771248393010806784', N'YX_problems', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'771248393212133376', N'YX_problems', N'title', null, N'varchar(400)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'771248393270853632', N'YX_problems', N'adviceContent', null, N'varchar(4000)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'771248393329573888', N'YX_problems', N'advicer', null, N'varchar(100)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'771248393384099840', N'YX_problems', N'adviceTime', null, N'datetime', N'Date', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'771248393434431488', N'YX_problems', N'replyState', null, N'int', N'int', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'771248393472180224', N'YX_problems', N'replyContent', null, N'varchar(4000)', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'771248393522511872', N'YX_problems', N'replyPerson', null, N'varchar(100)', N'String', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'771248393572843520', N'YX_problems', N'replyTime', null, N'datetime', N'Date', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'771248393627369472', N'YX_problems', N'adviceType', null, N'varchar(100)', N'String', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'771248393681895424', N'YX_problems', N'isCommon', null, N'int', N'int', N'0', N'0', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'771248393736421376', N'YX_problems', N'isNotice', null, N'int', N'int', N'0', N'0', null, N'12')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'771619793450041344', N'YX_publicServierTel', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'771619793508761600', N'YX_publicServierTel', N'publicName', null, N'varchar(50)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'771619793567481856', N'YX_publicServierTel', N'head', null, N'varchar(20)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'771619793622007808', N'YX_publicServierTel', N'telephone', null, N'varchar(20)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'771619793668145152', N'YX_publicServierTel', N'place', null, N'varchar(100)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'771619793735254016', N'YX_publicServierTel', N'photo', null, N'varchar(50)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'771619793798168576', N'YX_publicServierTel', N'orderFlag', null, N'bigint', N'long', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'772043784434221056', N'C49UBTaskRemind', N'AddUser', N'提醒对象', N'varchar(16)', N'String', N'0', N'1', N'', N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'772046431832768512', N'C49UBTaskRemind', N'AheadFormat', N'提前量字符串', N'varchar(64)', N'String', N'0', N'0', N'', N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'772082546526650368', N'C49UBTask', N'OfferName', N'发布人姓名', N'varchar(64)', N'String', N'0', N'0', N'', N'16')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'772082807898898432', N'C49UBTask', N'DoUserName', N'执行人姓名', N'varchar(1024)', N'String', N'0', N'0', N'', N'18')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'772105275959148544', N'C49UBTaskTalk', N'AddUserName', N'添加人姓名', N'varchar(16)', N'String', N'0', N'0', N'', N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'772694509573111808', N'C49UBTaskTalk', N'AddUserRole', N'添加人角色', N'varchar(16)', N'String', N'0', N'0', N'', N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773064686995243008', N'JL_voteOptions', N'id', N'主键', N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773064687058157568', N'JL_voteOptions', N'postId', N'提票主题', N'bigint', N'long', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773064687108489216', N'JL_voteOptions', N'content', N'选项内容', N'varchar(400)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773064687158820864', N'JL_voteOptions', N'orderFlag', N'排序号', N'bigint', N'long', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773064687213346816', N'JL_voteOptions', N'counts', N'投票数量', N'bigint', N'long', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773064687267872768', N'JL_voteOptions', N'image', N'图片路径', N'varchar(128)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773443195076870144', N'JL_postInfo', N'id', N'主键', N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773443195244642304', N'JL_postInfo', N'plantId', N'版块ID', N'bigint', N'long', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773443195299168256', N'JL_postInfo', N'plantLabel', N'版块标签', N'varchar(100)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773443195353694208', N'JL_postInfo', N'title', N'标题', N'varchar(400)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773443195404025856', N'JL_postInfo', N'content', N'内容', N'text', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773443195525660672', N'JL_postInfo', N'state', N'状态', N'int', N'int', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773443195575992320', N'JL_postInfo', N'hasPicture', N'是否含图片', N'int', N'int', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773443195630518272', N'JL_postInfo', N'hasAttachment', N'是否含附件', N'int', N'int', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773443195672461312', N'JL_postInfo', N'isTop', N'是否置顶', N'int', N'int', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773443195722792960', N'JL_postInfo', N'topTime', N'置顶时间', N'datetime', N'Date', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773443195794096128', N'JL_postInfo', N'poster', N'发贴人', N'varchar(100)', N'String', N'0', N'0', null, N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773443195844427776', N'JL_postInfo', N'createTime', N'创建时间', N'datetime', N'Date', N'0', N'0', null, N'12')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773443195911536640', N'JL_postInfo', N'postTime', N'发贴时间', N'datetime', N'Date', N'0', N'0', null, N'13')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773443195966062592', N'JL_postInfo', N'viewCount', N'浏览次数', N'bigint', N'long', N'0', N'0', null, N'14')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773443196049948672', N'JL_postInfo', N'replyCount', N'回贴数量', N'bigint', N'long', N'0', N'0', null, N'15')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773443196100280320', N'JL_postInfo', N'lastReplyer', N'最后回贴人', N'varchar(100)', N'String', N'0', N'0', null, N'16')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773443196163194880', N'JL_postInfo', N'lastReplyTime', N'最后回贴时间', N'datetime', N'Date', N'0', N'0', null, N'17')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773443196221915136', N'JL_postInfo', N'hasComponent', N'是否含组件', N'int', N'int', N'0', N'0', null, N'18')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773443196284829696', N'JL_postInfo', N'compoentId', N'组件类型', N'varchar(100)', N'String', N'0', N'0', null, N'19')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773443196339355648', N'JL_postInfo', N'endTime', N'组件截止时间', N'datetime', N'Date', N'0', N'0', null, N'20')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773443196389687296', N'JL_postInfo', N'voteType', N'投票组件类型', N'int', N'int', N'0', N'0', null, N'21')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773443196440018944', N'JL_postInfo', N'praiseCount', N'点赞数', N'bigint', N'long', N'0', N'0', null, N'22')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'773443196494544896', N'JL_postInfo', N'voteLimit', N'投票限制数量', N'bigint', N'long', N'0', N'0', null, N'23')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'774116915286114304', N'App_leave', N'id', null, N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'774116915504218112', N'App_leave', N'leaveType', N'请假类型', N'varchar(16)', N'String', N'0', N'0', N'', N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'774116915579715584', N'App_leave', N'leaveReason', N'请假事由', N'varchar(1000)', N'String', N'0', N'0', N'', N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'774116915630047232', N'App_leave', N'isAllday', N'是否全天', N'bigint', N'long', N'0', N'0', N'', N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'774116915697156096', N'App_leave', N'startTime', N'开始时间', N'datetime', N'Date', N'0', N'0', N'', N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'774116915764264960', N'App_leave', N'endTime', N'结束时间', N'datetime', N'Date', N'0', N'0', N'', N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'774116915818790912', N'App_leave', N'isAgree', N'是否同意', N'bigint', N'long', N'0', N'0', N'', N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'774116915869122560', N'App_leave', N'state', N'状态', N'varchar(10)', N'String', N'0', N'0', N'', N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'774116915923648512', N'App_leave', N'leaveName', N'请假人', N'varchar(50)', N'String', N'0', N'0', N'', N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'774116915978174464', N'App_leave', N'examineName', N'审批人', N'varchar(50)', N'String', N'0', N'0', N'', N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'774116916036894720', N'App_leave', N'applyTime', N'申请时间', N'datetime', N'Date', N'0', N'0', N'', N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'774116916087226368', N'App_leave', N'examineTime', N'审批时间', N'datetime', N'Date', N'0', N'0', N'', N'12')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'774117452584845312', N'App_leave', N'examineNote', N'审批内容', N'varchar(1024)', N'String', N'0', N'0', N'', N'13')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'774703669131083776', N'JL_questions', N'id', N'主键', N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'774703669462433792', N'JL_questions', N'postId', N'问卷主题', N'bigint', N'long', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'774703669533736960', N'JL_questions', N'content', N'题目内容', N'varchar(4000)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'774703669684731904', N'JL_questions', N'type', N'题型', N'varchar(100)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'774703669751840768', N'JL_questions', N'orderFlag', N'排序号', N'bigint', N'long', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'774703669839921152', N'JL_questions', N'answer', N'问题答案', N'varchar(256)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'775256493871071232', N'App_invigilate', N'id', N'主键', N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'775256494064009216', N'App_invigilate', N'schoolYear', N'学年', N'varchar(50)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'775256494118535168', N'App_invigilate', N'speName', N'专业名称', N'varchar(50)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'775256494164672512', N'App_invigilate', N'userName', N'姓名', N'varchar(50)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'775256494227587072', N'App_invigilate', N'courseName', N'课程名称', N'varchar(50)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'775256494290501632', N'App_invigilate', N'examDate', N'考试日期', N'datetime', N'Date', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'775256494345027584', N'App_invigilate', N'examStartTime', N'考试开始时间', N'datetime', N'Date', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'775256494412136448', N'App_invigilate', N'examEndTime', N'考试结束时间', N'datetime', N'Date', N'0', N'0', null, N'8')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'775256494475051008', N'App_invigilate', N'examSitus', N'考试地点', N'varchar(10)', N'String', N'0', N'0', null, N'9')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'775256494529576960', N'App_invigilate', N'isExam', N'是否完成监考', N'bigint', N'long', N'0', N'0', null, N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'777329399027466240', N'JL_questionOptions', N'id', N'主键', N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'777329399157489664', N'JL_questionOptions', N'questId', N'问卷题目ID', N'bigint', N'long', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'777329399274930176', N'JL_questionOptions', N'content', N'选项内容', N'varchar(4000)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'777329399333650432', N'JL_questionOptions', N'orderFlag', N'排序号', N'bigint', N'long', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'777329399425925120', N'JL_questionOptions', N'charIndex', N'字母序号', N'varchar(16)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'777467666020433920', N'Tb_column', N'id', N'主键', N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'777467666188206080', N'Tb_column', N'columnName', N'公共名称', N'varchar(50)', N'String', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'777467666234343424', N'Tb_column', N'columnIdentifying', N'负责人', N'varchar(20)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'777467666293063680', N'Tb_column', N'columnNote', N'联系电话', N'varchar(1000)', N'String', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'777467666355978240', N'Tb_column', N'creatDept', N'地点', N'varchar(100)', N'String', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'777467666486001664', N'Tb_column', N'creatName', N'图片', N'varchar(50)', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'777467666548916224', N'Tb_column', N'creatTime', N'排序', N'datetime', N'Date', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'777467700426309632', N'Tb_contentRelease', N'id', N'主键', N'bigint', N'long', N'1', N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'777467700501807104', N'Tb_contentRelease', N'columnId', N'栏目', N'bigint', N'long', N'0', N'0', null, N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'777467700623441920', N'Tb_contentRelease', N'fbName', N'发布人', N'varchar(50)', N'String', N'0', N'0', null, N'3')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'777467700694745088', N'Tb_contentRelease', N'fbTime', N'发布时间', N'datetime', N'Date', N'0', N'0', null, N'4')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'777467700753465344', N'Tb_contentRelease', N'contentType', N'内容类型', N'bigint', N'long', N'0', N'0', null, N'5')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'777467700816379904', N'Tb_contentRelease', N'content', N'内容', N'text', N'String', N'0', N'0', null, N'6')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'777467700879294464', N'Tb_contentRelease', N'img', N'图片', N'text', N'String', N'0', N'0', null, N'7')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'778266525738991616', N'C49UBTaskTalk', N'vPath', N'声音文件', N'varchar(1024)', N'String', N'0', N'0', N'', N'10')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'778266620903555072', N'C49UBTaskTalk', N'iPath', N'图像文件', N'varchar(1024)', N'String', N'0', N'0', N'', N'11')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'785355579525693440', N'C49UBTaskReceive', N'ID', N'ID', N'bigint', N'long', N'1', N'1', N'', N'1')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'785355729006493696', N'C49UBTaskReceive', N'TaskID', N'TaskID', N'bigint', N'long', N'0', N'0', N'', N'2')
GO
GO
INSERT INTO [dbo].[CGModelField] ([id], [modelCode], [fieldCode], [fieldName], [fieldType], [className], [pk], [notNull], [attributes], [orderFlag]) VALUES (N'785357589331312640', N'C49UBTaskView', N'IsGet', N'知晓状态', N'varchar(16)', N'String', N'0', N'0', N'', N'6')
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
-- Table structure for PLogDataDelete
-- ----------------------------
DROP TABLE [dbo].[PLogDataDelete]
GO
CREATE TABLE [dbo].[PLogDataDelete] (
[id] bigint NOT NULL ,
[tableCode] nvarchar(100) NULL ,
[pk] bigint NULL ,
[memo] text NULL ,
[deleteTime] datetime NULL ,
[deleteUser] nvarchar(200) NULL 
)


GO

-- ----------------------------
-- Records of PLogDataDelete
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
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'612826047431311360', N'612825152308117504', N'00060007', N'codegen.physicalTable', N'模型管理', N'menu', N'codegen/model/', N'icon-database', null, N'', N'1', N'1', N'1434944090129', N'admin', N'2015-06-22 11:34:50.130', N'admin', N'2015-09-13 23:53:14.510')
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
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'757827250996379648', N'0', N'0048', N'system', N'系统管理', N'group', N'', N'icon-applications-blue', null, N'', N'1', N'1', N'1434943876721', N'admin', N'2016-07-26 14:37:51.120', N'admin', N'2016-08-02 10:42:14.463')
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
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'791463124170440704', N'0', N'001y', N'project', N'api接口', N'group', N'', N'icon-weather-clouds', null, N'', N'1', N'1', N'1477534488139', N'admin', N'2016-10-27 00:00:00.000', N'admin', N'2016-10-27 00:00:00.000')
GO
GO
INSERT INTO [dbo].[PPermission] ([id], [parentId], [innerCode], [permissionCode], [permissionName], [type], [url], [icon], [moreAuthzValue], [memo], [visiable], [isLeaf], [orderFlag], [addUser], [addTime], [modifyUser], [modifyTime]) VALUES (N'791464523360894976', N'791463124170440704', N'001y001z', N'project.api.km', N'知识管理api', N'group', N'project/api/km/', N'icon-weather-cloud', null, N'', N'1', N'1', N'1477534821730', N'admin', N'2016-10-27 00:00:00.000', null, null)
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
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791470235847753728', N'admin', N'platform', N'2016-10-27 00:00:00.000', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791470235868725248', N'admin', N'platform.permission', N'2016-10-27 00:00:00.000', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791470235877113856', N'admin', N'platform.user', N'2016-10-27 00:00:00.000', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791470235877113857', N'admin', N'platform.role', N'2016-10-27 00:00:00.000', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791470235881308160', N'admin', N'system', N'2016-10-27 00:00:00.000', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791470235885502464', N'admin', N'sys.log', N'2016-10-27 00:00:00.000', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791470235889696768', N'admin', N'sys.feedback', N'2016-10-27 00:00:00.000', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791470235889696769', N'admin', N'sys.setting', N'2016-10-27 00:00:00.000', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791470235893891072', N'admin', N'codegen', N'2016-10-27 00:00:00.000', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791470235898085376', N'admin', N'codegen.physicalTable', N'2016-10-27 00:00:00.000', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791470235902279680', N'admin', N'codegen.iconIndex', N'2016-10-27 00:00:00.000', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791470235906473984', N'admin', N'codegen.druid', N'2016-10-27 00:00:00.000', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791470235906473985', N'admin', N'project', N'2016-10-27 00:00:00.000', N'admin', null, null)
GO
GO
INSERT INTO [dbo].[PRoleAuthz] ([id], [roleCode], [authzCode], [addTime], [addUser], [modifyTime], [modifyUser]) VALUES (N'791470235910668288', N'admin', N'project.api.km', N'2016-10-27 00:00:00.000', N'admin', null, null)
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
[configValue] nvarchar(MAX) NULL 
)


GO

-- ----------------------------
-- Records of PUserSettings
-- ----------------------------
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'wuwenlong', N'BPM.RemarkFavorite', N'已阅
请苏局长阅示
请尽快办理
请XXX协助办理
请局领导阅
请局领导阅')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'cailanfu', N'BPM.RemarkFavorite', N'已阅
请商贸市场科阅处
请商贸市场科阅办
请商贸市场科予以落实
请商贸市场科阅处，并按文件要求做好落实
请商务执法大队阅处
请商务执法大队阅办
无意见')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'admin', N'BPM.InterfaceStyle', N'Blue')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'chenzhiwen', N'BPM.RemarkFavorite', N'已阅
同意
不同意
请尽快办理
请XXX协助办理
请科室负责人审阅')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'qiuhaiyan', N'BPM.RemarkFavorite', N'已阅
请传阅
请尽快办理
请XXX协助办理')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'yufeng', N'BPM.RemarkFavorite', N'已阅
请圣锋科长阅
请丽萍主任阅
请圣锋、丽萍同志阅
请外贸科阅办')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'suzhengwang', N'BPM.RemarkFavorite', N'已阅
请虞局阅处
请胡书记阅
请蔡局阅
请章局阅
请李局阅
请苏书记阅
请吴主任阅')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'sulixian', N'BPM.RemarkFavorite', N'已阅
请雷李树同志阅
请雷李树同志阅办
请审批中心予以办理
请志杰同志阅
请纪检干部阅
请局领导干部阅
已阅，请林洁同志复印一份给我
无意见')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'zhanghuahu', N'BPM.RemarkFavorite', N'已阅
请夏敏科长阅
请夏敏、陈慧同志阅
请外经科阅办')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'huxiaoqiu', N'BPM.RemarkFavorite', N'已阅
请程芳科长阅
请程芳科长阅办
请程芳、许小鹤同志阅
请程芳、许小鹤同志阅办
请电子商务科阅
请电子商务科阅办')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'liping', N'moa.customHomePage', N'project/xxx/')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'admin', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'admin', N'moa.lastTokenTime', N'2016-10-18 09:39:10.640')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021016', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021016', N'moa.lastTokenTime', N'2016-03-01 11:16:23.757')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021004', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021004', N'moa.lastTokenTime', N'2016-03-01 10:24:38.582')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021020', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021020', N'moa.lastTokenTime', N'2016-07-19 09:28:17.014')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'040045', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'040045', N'moa.lastTokenTime', N'2016-03-01 16:50:34.148')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021015', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021015', N'moa.lastTokenTime', N'2016-02-24 13:56:03.323')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'004023', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'004023', N'moa.lastTokenTime', N'2016-01-26 15:30:05.601')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'003018', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'003018', N'moa.lastTokenTime', N'2016-01-19 13:32:38.417')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'022024', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'022024', N'moa.lastTokenTime', N'2016-02-29 12:47:51.684')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021024', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021024', N'moa.lastTokenTime', N'2016-03-01 16:28:31.397')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'011012', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'011012', N'moa.lastTokenTime', N'2016-02-19 15:48:54.458')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'040037', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'040037', N'moa.lastTokenTime', N'2016-03-01 19:54:01.080')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007017', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007017', N'moa.lastTokenTime', N'2016-01-25 21:23:19.452')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'004020', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'004020', N'moa.lastTokenTime', N'2016-02-29 10:02:56.777')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'020009', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'020009', N'moa.lastTokenTime', N'2016-03-01 08:52:40.136')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001031', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001031', N'moa.lastTokenTime', N'2016-02-29 10:54:13.999')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'008004', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'008004', N'moa.lastTokenTime', N'2016-02-24 08:29:07.377')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001027', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001027', N'moa.lastTokenTime', N'2016-02-29 10:24:16.013')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014054', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014054', N'moa.lastTokenTime', N'2016-02-29 13:05:01.930')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017025', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017025', N'moa.lastTokenTime', N'2016-02-21 18:49:10.767')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016016', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016016', N'moa.lastTokenTime', N'2016-02-29 21:12:16.050')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007005', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007005', N'moa.lastTokenTime', N'2016-02-28 08:27:55.165')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001022', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001022', N'moa.lastTokenTime', N'2016-02-25 13:31:38.684')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017049', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017049', N'moa.lastTokenTime', N'2016-03-01 22:38:00.058')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016030', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016030', N'moa.lastTokenTime', N'2016-02-23 13:30:02.812')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'023016', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'023016', N'moa.lastTokenTime', N'2016-02-29 19:42:56.959')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015035', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015035', N'moa.lastTokenTime', N'2016-01-19 14:44:57.180')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007044', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007044', N'moa.lastTokenTime', N'2016-03-01 07:18:29.877')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006022', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006022', N'moa.lastTokenTime', N'2016-01-19 14:52:23.669')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014011', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014011', N'moa.lastTokenTime', N'2016-03-02 14:04:01.918')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006054', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006054', N'moa.lastTokenTime', N'2016-01-19 15:07:08.383')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001028', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001028', N'moa.lastTokenTime', N'2016-01-19 19:24:26.254')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'018002', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'018002', N'moa.lastTokenTime', N'2016-01-29 09:02:06.684')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017059', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017059', N'moa.lastTokenTime', N'2016-02-24 15:33:15.229')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001024', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001024', N'moa.lastTokenTime', N'2016-02-24 19:53:13.784')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001015', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001015', N'moa.lastTokenTime', N'2016-01-19 15:11:58.414')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'022010', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'022010', N'moa.lastTokenTime', N'2016-03-02 10:00:53.985')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017048', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017048', N'moa.lastTokenTime', N'2016-02-29 15:22:00.781')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'024011', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'024011', N'moa.lastTokenTime', N'2016-02-29 14:17:20.184')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017050', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017050', N'moa.lastTokenTime', N'2016-01-19 15:22:46.985')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017036', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017036', N'moa.lastTokenTime', N'2016-03-01 13:24:50.019')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'024021', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'024021', N'moa.lastTokenTime', N'2016-01-19 15:25:49.034')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'023015', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'023015', N'moa.lastTokenTime', N'2016-03-02 07:17:20.879')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019046', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019046', N'moa.lastTokenTime', N'2016-01-19 15:41:42.671')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017003', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017003', N'moa.lastTokenTime', N'2016-09-19 11:25:26.882')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'024020', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'024020', N'moa.lastTokenTime', N'2016-01-19 16:21:56.656')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001012', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001012', N'moa.lastTokenTime', N'2016-01-19 16:42:26.850')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'004015', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'004015', N'moa.lastTokenTime', N'2016-01-26 09:14:53.005')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'023013', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'023013', N'moa.lastTokenTime', N'2016-02-19 14:25:32.024')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017030', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017030', N'moa.lastTokenTime', N'2016-01-19 16:57:35.640')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017052', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'160002', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017065', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017065', N'moa.lastTokenTime', N'2016-03-01 22:31:08.985')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021001', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021001', N'moa.lastTokenTime', N'2016-03-02 07:07:22.890')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001030', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001030', N'moa.lastTokenTime', N'2016-01-19 13:26:04.600')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001029', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001029', N'moa.lastTokenTime', N'2016-01-19 14:01:22.870')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007015', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007015', N'moa.lastTokenTime', N'2016-02-29 15:51:24.348')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'011003', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'011003', N'moa.lastTokenTime', N'2016-03-02 10:02:00.339')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'011011', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'011011', N'moa.lastTokenTime', N'2016-03-01 14:45:49.921')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'018032', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'018032', N'moa.lastTokenTime', N'2016-01-19 13:43:52.098')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019043', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019043', N'moa.lastTokenTime', N'2016-02-29 11:33:16.461')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'003006', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'003006', N'moa.lastTokenTime', N'2016-01-28 17:14:04.675')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007016', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007016', N'moa.lastTokenTime', N'2016-02-01 08:01:42.483')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'002004', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'002004', N'moa.lastTokenTime', N'2016-01-28 12:13:52.757')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'013004', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'013004', N'moa.lastTokenTime', N'2016-02-29 21:03:10.691')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'023011', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'023011', N'moa.lastTokenTime', N'2016-03-01 22:46:55.046')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017046', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017046', N'moa.lastTokenTime', N'2016-02-23 16:11:49.332')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015026', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015026', N'moa.lastTokenTime', N'2016-03-01 22:06:29.567')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'023010', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'023010', N'moa.lastTokenTime', N'2016-01-25 16:51:41.183')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019047', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019047', N'moa.lastTokenTime', N'2016-02-29 13:51:04.983')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015030', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015030', N'moa.lastTokenTime', N'2016-03-01 12:26:21.031')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007020', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007020', N'moa.lastTokenTime', N'2016-02-25 15:50:07.542')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001025', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001025', N'moa.lastTokenTime', N'2016-01-19 15:13:57.104')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'003017', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'003017', N'moa.lastTokenTime', N'2016-03-02 08:01:30.111')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015043', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015043', N'moa.lastTokenTime', N'2016-02-19 16:13:36.898')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014003', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014003', N'moa.lastTokenTime', N'2016-02-22 08:23:20.983')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014052', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014052', N'moa.lastTokenTime', N'2016-01-27 19:48:07.640')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'009007', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'009007', N'moa.lastTokenTime', N'2016-02-29 10:05:23.596')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014061', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014061', N'moa.lastTokenTime', N'2016-03-01 16:51:36.178')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007006', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007006', N'moa.lastTokenTime', N'2016-03-01 17:44:58.882')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007014', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007014', N'moa.lastTokenTime', N'2016-02-07 14:20:48.644')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007038', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007038', N'moa.lastTokenTime', N'2016-02-29 10:41:08.383')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007033', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007033', N'moa.lastTokenTime', N'2016-01-28 20:05:15.674')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'010003', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'010003', N'moa.lastTokenTime', N'2016-02-29 10:01:20.705')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007042', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007042', N'moa.lastTokenTime', N'2016-01-24 22:01:55.436')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'010004', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'010004', N'moa.lastTokenTime', N'2016-02-24 11:13:46.246')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017009', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017009', N'moa.lastTokenTime', N'2016-02-22 06:46:28.957')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'025010', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'025010', N'moa.lastTokenTime', N'2016-01-20 22:57:46.303')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'005001', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'005001', N'moa.lastTokenTime', N'2016-02-24 21:39:35.266')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015044', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015044', N'moa.lastTokenTime', N'2016-02-29 20:28:55.839')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021022', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021022', N'moa.lastTokenTime', N'2016-02-25 15:00:53.430')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017026', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017026', N'moa.lastTokenTime', N'2016-01-21 14:53:10.694')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'024013', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'024013', N'moa.lastTokenTime', N'2016-01-21 15:00:02.140')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021045', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021045', N'moa.lastTokenTime', N'2016-03-01 15:32:44.991')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017035', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017035', N'moa.lastTokenTime', N'2016-01-21 15:29:52.764')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016034', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016034', N'moa.lastTokenTime', N'2016-02-26 16:47:03.822')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016036', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016036', N'moa.lastTokenTime', N'2016-02-29 10:36:45.621')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006008', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006008', N'moa.lastTokenTime', N'2016-01-21 21:42:34.019')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016011', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016011', N'moa.lastTokenTime', N'2016-02-29 16:22:04.893')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006055', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006055', N'moa.lastTokenTime', N'2016-02-22 14:45:01.040')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017054', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017054', N'moa.lastTokenTime', N'2016-03-02 07:23:50.686')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017029', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017029', N'moa.lastTokenTime', N'2016-01-22 11:20:41.288')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014026', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014026', N'moa.lastTokenTime', N'2016-02-29 14:28:13.235')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016029', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016029', N'moa.lastTokenTime', N'2016-02-29 19:50:16.723')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017043', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017043', N'moa.lastTokenTime', N'2016-02-29 13:24:55.488')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017041', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017041', N'moa.lastTokenTime', N'2016-01-25 09:25:16.593')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007039', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007039', N'moa.lastTokenTime', N'2016-02-22 18:49:31.505')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019005', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019005', N'moa.lastTokenTime', N'2016-02-10 08:47:19.726')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006065', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006065', N'moa.lastTokenTime', N'2016-02-24 13:44:13.743')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015021', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015021', N'moa.lastTokenTime', N'2016-01-25 16:46:06.351')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'023018', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'023018', N'moa.lastTokenTime', N'2016-02-29 20:37:39.377')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017017', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017017', N'moa.lastTokenTime', N'2016-01-25 16:50:25.518')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019028', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019028', N'moa.lastTokenTime', N'2016-02-25 09:59:46.118')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017052', N'moa.lastTokenTime', N'2016-03-01 22:33:44.639')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017053', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017053', N'moa.lastTokenTime', N'2016-03-02 08:26:53.597')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017014', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017014', N'moa.lastTokenTime', N'2016-03-02 13:42:07.697')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017019', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017019', N'moa.lastTokenTime', N'2016-01-19 19:23:54.393')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017002', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017002', N'moa.lastTokenTime', N'2016-03-01 19:16:28.062')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017001', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017001', N'moa.lastTokenTime', N'2016-03-02 13:56:34.979')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015042', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015042', N'moa.lastTokenTime', N'2016-01-20 09:22:48.263')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021030', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021030', N'moa.lastTokenTime', N'2016-01-29 06:42:13.115')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014010', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014010', N'moa.lastTokenTime', N'2016-01-20 10:02:18.363')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014009', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014009', N'moa.lastTokenTime', N'2016-02-26 11:57:55.604')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014004', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014004', N'moa.lastTokenTime', N'2016-01-25 22:30:27.220')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014008', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014008', N'moa.lastTokenTime', N'2016-01-20 10:11:56.317')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021019', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021019', N'moa.lastTokenTime', N'2016-02-12 09:04:07.458')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021026', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021026', N'moa.lastTokenTime', N'2016-01-29 16:36:51.972')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'023019', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'023019', N'moa.lastTokenTime', N'2016-01-23 16:25:07.532')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021043', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021043', N'moa.lastTokenTime', N'2016-01-21 14:23:07.852')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021011', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021011', N'moa.lastTokenTime', N'2016-02-29 12:31:30.276')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'009013', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'009013', N'moa.lastTokenTime', N'2016-03-02 10:47:58.035')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'003009', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'003009', N'moa.lastTokenTime', N'2016-03-02 10:31:54.336')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006057', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006057', N'moa.lastTokenTime', N'2016-03-02 10:10:40.088')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006015', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006015', N'moa.lastTokenTime', N'2016-02-17 09:29:24.831')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014016', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014016', N'moa.lastTokenTime', N'2016-01-26 08:09:36.497')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021005', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021005', N'moa.lastTokenTime', N'2016-03-01 15:13:57.557')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017007', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017007', N'moa.lastTokenTime', N'2016-03-02 08:59:41.910')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'018034', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'018034', N'moa.lastTokenTime', N'2016-03-01 17:56:36.778')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014024', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014024', N'moa.lastTokenTime', N'2016-02-25 21:07:53.460')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'004022', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'004022', N'moa.lastTokenTime', N'2016-02-27 16:00:02.663')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001007', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001007', N'moa.lastTokenTime', N'2016-02-26 07:00:02.234')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'003001', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'003001', N'moa.lastTokenTime', N'2016-01-31 19:32:31.989')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'022002', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'022002', N'moa.lastTokenTime', N'2016-03-02 11:58:50.176')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'020007', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'020007', N'moa.lastTokenTime', N'2016-02-14 09:52:11.427')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'011006', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'011006', N'moa.lastTokenTime', N'2016-01-26 15:16:44.925')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016019', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016019', N'moa.lastTokenTime', N'2016-03-02 08:37:32.470')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'030018', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'030018', N'moa.lastTokenTime', N'2016-01-26 15:47:08.392')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016032', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016032', N'moa.lastTokenTime', N'2016-01-26 18:29:40.103')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016039', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016039', N'moa.lastTokenTime', N'2016-01-26 21:12:20.542')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015004', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015004', N'moa.lastTokenTime', N'2016-02-19 15:59:17.897')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'018006', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'018006', N'moa.lastTokenTime', N'2016-01-26 22:40:05.657')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006064', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006064', N'moa.lastTokenTime', N'2016-01-27 08:39:53.585')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014053', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014053', N'moa.lastTokenTime', N'2016-01-27 15:24:58.767')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'024016', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'024016', N'moa.lastTokenTime', N'2016-01-27 09:08:55.020')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'004009', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'004009', N'moa.lastTokenTime', N'2016-03-01 15:59:15.085')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007030', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007030', N'moa.lastTokenTime', N'2016-02-26 14:38:01.230')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017051', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017051', N'moa.lastTokenTime', N'2016-03-01 18:06:44.993')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019052', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019052', N'moa.lastTokenTime', N'2016-01-27 12:36:23.762')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'040001', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'040001', N'moa.lastTokenTime', N'2016-01-27 15:08:57.229')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015038', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015038', N'moa.lastTokenTime', N'2016-02-29 12:54:13.844')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021002', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021002', N'moa.lastTokenTime', N'2016-02-26 18:00:21.198')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017057', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017057', N'moa.lastTokenTime', N'2016-01-27 16:26:37.696')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'018003', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'018003', N'moa.lastTokenTime', N'2016-01-27 17:06:23.959')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'030026', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'030026', N'moa.lastTokenTime', N'2016-01-27 17:24:46.058')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021010', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021010', N'moa.lastTokenTime', N'2016-01-31 23:07:57.005')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'018007', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'018007', N'moa.lastTokenTime', N'2016-02-24 14:34:51.187')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006069', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006069', N'moa.lastTokenTime', N'2016-01-30 09:31:29.772')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001010', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001010', N'moa.lastTokenTime', N'2016-02-29 12:52:30.999')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016008', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016008', N'moa.lastTokenTime', N'2016-02-22 09:13:47.611')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'004013', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'004013', N'moa.lastTokenTime', N'2016-03-01 20:39:10.498')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'003023', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'003023', N'moa.lastTokenTime', N'2016-02-29 13:42:32.780')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006003', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006003', N'moa.lastTokenTime', N'2016-03-01 10:42:27.480')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019017', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019017', N'moa.lastTokenTime', N'2016-02-18 15:43:10.274')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'000002', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'000002', N'moa.lastTokenTime', N'2016-02-02 09:07:48.135')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017047', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017047', N'moa.lastTokenTime', N'2016-01-22 23:36:15.629')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014051', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014051', N'moa.lastTokenTime', N'2016-02-23 12:03:20.077')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014050', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014050', N'moa.lastTokenTime', N'2016-02-19 13:03:09.353')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014006', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014006', N'moa.lastTokenTime', N'2016-02-29 15:43:27.520')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'009002', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'009002', N'moa.lastTokenTime', N'2016-02-22 16:19:39.901')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017061', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017061', N'moa.lastTokenTime', N'2016-01-31 11:00:09.930')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006066', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006066', N'moa.lastTokenTime', N'2016-03-02 11:20:55.424')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017006', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017006', N'moa.lastTokenTime', N'2016-03-02 08:22:24.493')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017037', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017037', N'moa.lastTokenTime', N'2016-02-19 15:56:41.350')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016013', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016013', N'moa.lastTokenTime', N'2016-01-30 19:30:20.026')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014063', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014063', N'moa.lastTokenTime', N'2016-03-02 08:43:17.313')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'013003', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'013003', N'moa.lastTokenTime', N'2016-01-21 13:49:25.705')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'010002', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'010002', N'moa.lastTokenTime', N'2016-02-29 10:09:42.398')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016005', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016005', N'moa.lastTokenTime', N'2016-02-29 10:13:45.241')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'004011', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'004011', N'moa.lastTokenTime', N'2016-02-15 20:43:17.742')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016027', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016027', N'moa.lastTokenTime', N'2016-03-02 12:02:29.375')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006028', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006028', N'moa.lastTokenTime', N'2016-03-01 11:12:40.041')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007009', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007009', N'moa.lastTokenTime', N'2016-01-25 16:05:19.482')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007010', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007010', N'moa.lastTokenTime', N'2016-01-25 16:13:31.736')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015016', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015016', N'moa.lastTokenTime', N'2016-02-29 17:46:30.859')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'005002', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'005002', N'moa.lastTokenTime', N'2016-02-23 16:13:50.404')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'018036', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'018036', N'moa.lastTokenTime', N'2016-01-25 16:28:30.620')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'023021', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'023021', N'moa.lastTokenTime', N'2016-02-06 15:28:00.270')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016037', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016037', N'moa.lastTokenTime', N'2016-03-02 12:00:40.708')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'025013', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'025013', N'moa.lastTokenTime', N'2016-01-25 17:21:53.497')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007021', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007021', N'moa.lastTokenTime', N'2016-01-25 17:36:29.152')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007013', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007013', N'moa.lastTokenTime', N'2016-03-01 10:26:46.500')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017033', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017033', N'moa.lastTokenTime', N'2016-02-24 08:01:36.231')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015018', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015018', N'moa.lastTokenTime', N'2016-01-26 13:41:47.254')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'022003', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'022003', N'moa.lastTokenTime', N'2016-03-01 12:40:14.098')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'005004', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'005004', N'moa.lastTokenTime', N'2016-02-24 08:11:25.872')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'008006', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'008006', N'moa.lastTokenTime', N'2016-02-13 19:48:06.685')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006023', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006023', N'moa.lastTokenTime', N'2016-02-10 22:39:27.035')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019048', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019048', N'moa.lastTokenTime', N'2016-01-27 09:49:56.279')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019018', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019018', N'moa.lastTokenTime', N'2016-01-27 22:23:38.025')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021042', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021042', N'moa.lastTokenTime', N'2016-01-28 19:34:24.119')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015003', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015003', N'moa.lastTokenTime', N'2016-02-15 20:38:33.485')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'013001', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'013001', N'moa.lastTokenTime', N'2016-03-01 16:00:30.368')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'020001', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'020001', N'moa.lastTokenTime', N'2016-03-02 09:51:34.149')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'018011', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'018011', N'moa.lastTokenTime', N'2016-03-01 20:36:59.410')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016040', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016040', N'moa.lastTokenTime', N'2016-01-31 21:52:52.512')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007031', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007031', N'moa.lastTokenTime', N'2016-02-01 13:01:57.946')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'020010', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'020010', N'moa.lastTokenTime', N'2016-02-01 14:04:36.924')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015012', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015012', N'moa.lastTokenTime', N'2016-03-01 16:23:06.041')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006040', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006040', N'moa.lastTokenTime', N'2016-02-24 08:30:11.097')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'003015', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'003015', N'moa.lastTokenTime', N'2016-02-24 21:55:18.999')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019011', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019011', N'moa.lastTokenTime', N'2016-02-29 12:59:56.605')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'000006', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'000006', N'moa.lastTokenTime', N'2016-02-25 18:20:54.317')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'003019', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'003019', N'moa.lastTokenTime', N'2016-02-29 14:05:32.767')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015013', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015013', N'moa.lastTokenTime', N'2016-02-29 11:06:06.571')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001023', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001023', N'moa.lastTokenTime', N'2016-02-17 17:06:49.531')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006001', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006001', N'moa.lastTokenTime', N'2016-02-18 08:41:28.821')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019044', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019044', N'moa.lastTokenTime', N'2016-02-12 13:07:21.635')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006018', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006018', N'moa.lastTokenTime', N'2016-02-16 16:43:08.943')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021008', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021008', N'moa.lastTokenTime', N'2016-02-18 11:24:37.531')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017031', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017031', N'moa.lastTokenTime', N'2016-02-29 14:50:58.942')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017055', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017055', N'moa.lastTokenTime', N'2016-02-29 19:58:49.884')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017012', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017012', N'moa.lastTokenTime', N'2016-03-01 16:43:18.765')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019025', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019025', N'moa.lastTokenTime', N'2016-03-02 07:38:44.817')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'004006', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'004006', N'moa.lastTokenTime', N'2016-03-02 13:12:47.963')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'018027', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'018027', N'moa.lastTokenTime', N'2016-02-23 19:06:04.687')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007043', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007043', N'moa.lastTokenTime', N'2016-03-02 11:09:45.699')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007024', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007024', N'moa.lastTokenTime', N'2016-02-29 20:05:09.425')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007032', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007032', N'moa.lastTokenTime', N'2016-02-20 18:08:45.257')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'011010', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'011010', N'moa.lastTokenTime', N'2016-03-02 07:14:00.496')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014056', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014056', N'moa.lastTokenTime', N'2016-02-29 16:51:56.022')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007040', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007040', N'moa.lastTokenTime', N'2016-02-19 16:16:26.858')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'023020', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'023020', N'moa.lastTokenTime', N'2016-01-20 11:18:58.604')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007027', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007027', N'moa.lastTokenTime', N'2016-02-29 16:09:31.044')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007018', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007018', N'moa.lastTokenTime', N'2016-01-22 06:49:40.167')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'024019', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'024019', N'moa.lastTokenTime', N'2016-01-20 11:25:45.095')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017062', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017062', N'moa.lastTokenTime', N'2016-02-19 15:19:24.314')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021044', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021044', N'moa.lastTokenTime', N'2016-02-22 09:06:37.191')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021041', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021041', N'moa.lastTokenTime', N'2016-02-29 09:48:39.103')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017022', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017022', N'moa.lastTokenTime', N'2016-01-21 14:59:35.107')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'030068', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'030068', N'moa.lastTokenTime', N'2016-01-22 14:18:20.613')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015032', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015032', N'moa.lastTokenTime', N'2016-01-22 14:20:34.105')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'024022', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'024022', N'moa.lastTokenTime', N'2016-01-22 16:11:28.812')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017018', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017018', N'moa.lastTokenTime', N'2016-03-02 13:53:06.637')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016026', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016026', N'moa.lastTokenTime', N'2016-02-29 17:25:05.099')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'018022', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'018022', N'moa.lastTokenTime', N'2016-03-02 13:46:52.745')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016020', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016020', N'moa.lastTokenTime', N'2016-03-02 03:16:10.707')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007026', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007026', N'moa.lastTokenTime', N'2016-01-26 08:26:28.364')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001002', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001002', N'moa.lastTokenTime', N'2016-01-26 09:00:56.634')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006049', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006049', N'moa.lastTokenTime', N'2016-02-29 17:12:26.401')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007019', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007019', N'moa.lastTokenTime', N'2016-02-26 07:28:36.468')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016014', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016014', N'moa.lastTokenTime', N'2016-02-27 07:12:42.984')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019019', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019019', N'moa.lastTokenTime', N'2016-03-02 13:38:37.229')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'040021', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'040021', N'moa.lastTokenTime', N'2016-02-24 14:13:39.092')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021009', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021009', N'moa.lastTokenTime', N'2016-03-01 09:43:17.402')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014057', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014057', N'moa.lastTokenTime', N'2016-03-01 20:02:50.231')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'040043', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'040043', N'moa.lastTokenTime', N'2016-02-25 09:33:42.968')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019020', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019020', N'moa.lastTokenTime', N'2016-02-22 08:21:21.209')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019012', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019012', N'moa.lastTokenTime', N'2016-03-01 10:17:05.595')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'004001', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'004001', N'moa.lastTokenTime', N'2016-02-25 14:35:09.045')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007023', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007023', N'moa.lastTokenTime', N'2016-02-29 14:55:42.573')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'040018', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'040018', N'moa.lastTokenTime', N'2016-02-22 13:24:04.540')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001005', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001005', N'moa.lastTokenTime', N'2016-02-23 16:49:42.863')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'003004', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'003004', N'moa.lastTokenTime', N'2016-02-22 14:38:49.384')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'023014', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'023014', N'moa.lastTokenTime', N'2016-03-02 07:18:51.526')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015033', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015033', N'moa.lastTokenTime', N'2016-02-24 08:05:19.760')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016038', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016038', N'moa.lastTokenTime', N'2016-02-25 18:53:03.932')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'009016', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'009016', N'moa.lastTokenTime', N'2016-02-29 10:44:24.194')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'009017', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'009017', N'moa.lastTokenTime', N'2016-02-29 18:39:52.517')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007008', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007008', N'moa.lastTokenTime', N'2016-02-24 13:16:00.252')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021014', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021014', N'moa.lastTokenTime', N'2016-02-23 09:53:49.794')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016009', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016009', N'moa.lastTokenTime', N'2016-02-29 09:31:11.260')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'025012', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'025012', N'moa.lastTokenTime', N'2016-03-02 08:40:30.762')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007037', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007037', N'moa.lastTokenTime', N'2016-02-29 15:44:58.213')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007022', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007022', N'moa.lastTokenTime', N'2016-02-23 13:41:57.825')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015006', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015006', N'moa.lastTokenTime', N'2016-02-29 15:56:11.907')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014001', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014001', N'moa.lastTokenTime', N'2016-02-23 16:02:55.468')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006043', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006043', N'moa.lastTokenTime', N'2016-02-23 17:26:42.489')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'003022', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'003022', N'moa.lastTokenTime', N'2016-02-29 12:49:16.518')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001021', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001021', N'moa.lastTokenTime', N'2016-02-24 08:21:18.950')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014020', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014020', N'moa.lastTokenTime', N'2016-03-01 11:04:48.514')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014060', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014060', N'moa.lastTokenTime', N'2016-02-25 09:30:31.550')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015037', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015037', N'moa.lastTokenTime', N'2016-02-29 16:07:53.577')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015046', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015046', N'moa.lastTokenTime', N'2016-03-02 08:04:33.032')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015010', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015010', N'moa.lastTokenTime', N'2016-03-01 18:38:28.708')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016012', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016012', N'moa.lastTokenTime', N'2016-03-02 09:29:44.694')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017024', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017024', N'moa.lastTokenTime', N'2016-02-26 17:45:56.061')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017028', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017028', N'moa.lastTokenTime', N'2016-02-29 10:52:59.356')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'009010', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'009010', N'moa.lastTokenTime', N'2016-01-28 21:22:08.874')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015039', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015039', N'moa.lastTokenTime', N'2016-01-28 22:39:30.024')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'010006', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'010006', N'moa.lastTokenTime', N'2016-02-06 10:10:44.597')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'018038', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'018038', N'moa.lastTokenTime', N'2016-01-29 12:30:46.699')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019009', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019009', N'moa.lastTokenTime', N'2016-01-30 23:28:59.823')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'000003', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'000003', N'moa.lastTokenTime', N'2016-02-29 11:39:15.609')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015031', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015031', N'moa.lastTokenTime', N'2016-02-25 23:08:50.914')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'000005', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'000005', N'moa.lastTokenTime', N'2016-02-09 00:39:20.775')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006035', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006035', N'moa.lastTokenTime', N'2016-03-01 10:52:13.020')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'030019', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'030019', N'moa.lastTokenTime', N'2016-02-27 18:45:53.860')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'011008', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'011008', N'moa.lastTokenTime', N'2016-03-02 07:52:32.011')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021023', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'021023', N'moa.lastTokenTime', N'2016-02-27 18:01:45.032')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019030', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019030', N'moa.lastTokenTime', N'2016-02-25 21:29:04.323')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007036', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'007036', N'moa.lastTokenTime', N'2016-02-29 17:11:41.715')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'009011', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'009011', N'moa.lastTokenTime', N'2016-03-02 09:11:48.269')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'022004', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'022004', N'moa.lastTokenTime', N'2016-02-26 16:50:06.663')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015001', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015001', N'moa.lastTokenTime', N'2016-03-02 12:06:19.653')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014017', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014017', N'moa.lastTokenTime', N'2016-03-01 09:34:02.875')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001019', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'001019', N'moa.lastTokenTime', N'2016-02-29 12:42:37.907')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017027', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017027', N'moa.lastTokenTime', N'2016-02-29 14:36:02.316')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'testcs123', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'testcs123', N'moa.lastTokenTime', N'2016-07-27 10:01:37.497')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'330501199002091449', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'330501199002091449', N'moa.lastTokenTime', N'2016-08-03 09:11:22.167')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'150001', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'150001', N'moa.lastTokenTime', N'2016-09-20 09:09:28.191')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'160001', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'160001', N'moa.lastTokenTime', N'2016-08-25 14:23:52.613')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'160002', N'moa.lastTokenTime', N'2016-08-25 14:24:22.304')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'160003', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'test', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'test', N'moa.lastTokenTime', N'2016-08-25 14:11:31.974')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'25', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'25', N'moa.lastTokenTime', N'2016-09-19 13:13:53.572')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'16002', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'16002', N'moa.lastTokenTime', N'2016-09-19 16:58:11.155')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'16003', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'16003', N'moa.lastTokenTime', N'2016-09-20 09:06:08.521')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'16005', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'16005', N'moa.lastTokenTime', N'2016-09-14 10:16:12.312')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'10', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'10', N'moa.lastTokenTime', N'2016-09-19 16:39:03.634')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'030074', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'030074', N'moa.lastTokenTime', N'2016-09-20 09:10:35.456')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'030051', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'030051', N'moa.lastTokenTime', N'2016-09-19 09:17:49.976')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'admin1', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'admin1', N'moa.lastTokenTime', N'2016-10-19 13:34:55.214')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006060', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'006060', N'moa.lastTokenTime', N'2016-02-04 15:38:32.575')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'000007', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'000007', N'moa.lastTokenTime', N'2016-02-26 20:45:54.605')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'003003', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'003003', N'moa.lastTokenTime', N'2016-02-23 14:22:31.601')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'025011', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'025011', N'moa.lastTokenTime', N'2016-02-06 21:10:29.995')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'008005', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'008005', N'moa.lastTokenTime', N'2016-03-02 08:16:41.278')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'008001', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'008001', N'moa.lastTokenTime', N'2016-02-19 08:28:15.733')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'009003', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'009003', N'moa.lastTokenTime', N'2016-03-02 13:09:47.004')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017042', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'017042', N'moa.lastTokenTime', N'2016-02-19 09:19:55.802')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015009', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015009', N'moa.lastTokenTime', N'2016-02-24 15:14:58.088')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014002', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014002', N'moa.lastTokenTime', N'2016-02-19 16:11:25.386')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'005008', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'005008', N'moa.lastTokenTime', N'2016-02-22 15:33:11.017')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'011001', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'011001', N'moa.lastTokenTime', N'2016-02-24 13:55:31.519')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015017', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'015017', N'moa.lastTokenTime', N'2016-02-23 10:38:10.147')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014005', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014005', N'moa.lastTokenTime', N'2016-03-01 14:07:45.974')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'010001', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'010001', N'moa.lastTokenTime', N'2016-03-01 07:52:54.123')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019021', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'019021', N'moa.lastTokenTime', N'2016-02-24 08:36:03.585')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014012', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014012', N'moa.lastTokenTime', N'2016-02-29 15:34:11.511')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016033', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'016033', N'moa.lastTokenTime', N'2016-02-25 09:33:36.600')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014055', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'014055', N'moa.lastTokenTime', N'2016-02-25 18:08:42.931')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'21', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'21', N'moa.lastTokenTime', N'2016-09-19 14:04:14.622')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'160003', N'moa.lastTokenTime', N'2016-08-24 16:57:19.003')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'XT0004', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'XT0004', N'moa.lastTokenTime', N'2016-08-24 16:56:19.865')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'28', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'28', N'moa.lastTokenTime', N'2016-09-08 09:27:49.642')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'29', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'29', N'moa.lastTokenTime', N'2016-09-14 14:54:30.304')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'26', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'26', N'moa.lastTokenTime', N'2016-09-02 09:24:16.939')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'24', N'moa.hasInstalled', N'1')
GO
GO
INSERT INTO [dbo].[PUserSettings] ([userCode], [configName], [configValue]) VALUES (N'24', N'moa.lastTokenTime', N'2016-09-14 10:13:58.767')
GO
GO

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
-- Indexes structure for table PLogDataDelete
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table PLogDataDelete
-- ----------------------------
ALTER TABLE [dbo].[PLogDataDelete] ADD PRIMARY KEY ([id])
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
