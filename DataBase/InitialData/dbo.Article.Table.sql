SET IDENTITY_INSERT [dbo].[Article] ON 

INSERT [dbo].[Article] ([ID], [Title], [Summary], [MetaKeyWords], [MetaDescription], [Counter], [ArticleTypeID], [Description], [ArticleContent], [Status], [ImageThumbUrl], [ImageUrl], [IsPublish], [PublishDate], [CreateBy], [CreatebyName], [CreateDate], [LastUpdateBy], [LastUpdateByName], [LastUpdateDate]) VALUES (1, N'Build ZKEACMS Core Docker image', N'使用Docker build生成ZKEACMS Core的docker image', N'ZKEACMS,Docker', N'在项目的根目录，直接使用docker build来生成docker image，在构建过程中，会自动生成和发布程序', 3, 2, NULL, N'<p>在项目的根目录，直接使用docker build来生成docker image，在构建过程中，会自动生成和发布程序</p>
<pre>docker build -t zkeacms:latest .</pre>
<h3>手动发布后生成 docker image</h3>
<p>使用Publish.cmd或者Publish.sh(Linux)先发布ZKEACMS，发布完以后，可以定位到发布目录\src\ZKEACMS.WebHost\bin\Release\PublishOutput做一些配置和修改。</p>
<p>定位到目录\src\ZKEACMS.WebHost再使用docker build来生成docker image</p>
<pre>docker build -t zkeacms:latest .</pre>
<p>使用以下命令来查看生成的Docker image</p>
<pre>docker images</pre>
<h3>运行ZKEACMS</h3>
<p>运行ZKEACMS，数据库是必需的，在可以正常运行之前，还需要配置好数据库。然后可以使用docker run来运行</p>
<pre>docker run -d -p 2345:80 zkeacms</pre>
<h3>拉取最新的ZKEACMS镜像</h3>
<p>您可以不用自己生成，可以直接拉取我们整理好的镜像，该镜像已经配置好数据，可以直接运行</p>
<pre>docker pull zkeasoft/zkeacms</pre>
<h3>MySql</h3>
<p>首先需要拉取MySql的镜像</p>
<pre>docker pull mysql</pre>
<p>运行一个MySql的实例</p>
<pre>docker run -d -e MYSQL_ROOT_PASSWORD=root --name mysql -p 3306:3306 mysql --lower_case_table_names=1</pre>
<p>在MySql里面初始化一个ZKEACMS的数据库</p>
<p>拉取MySql的ZKEACMS镜像，镜像中已经初始化了MySql连接字符串：Server=mysql;Database=ZKEACMS_Core;User Id=root;Password=root;</p>
<pre>docker pull zkeasoft/zkeacms:mysql</pre>
<p>链接MySql运行。</p>
<pre>docker run -p 808:80 --link=mysql zkeacms:mysql</pre>', 1, N'/themes/blog/images/docker.jpg', NULL, 1, CAST(N'2017-11-19 23:41:19.000' AS DateTime), N'admin', N'ZKEASOFT', CAST(N'2017-11-19 23:41:19.000' AS DateTime), N'admin', N'ZKEASOFT', CAST(N'2018-04-03 10:46:09.147' AS DateTime))
INSERT [dbo].[Article] ([ID], [Title], [Summary], [MetaKeyWords], [MetaDescription], [Counter], [ArticleTypeID], [Description], [ArticleContent], [Status], [ImageThumbUrl], [ImageUrl], [IsPublish], [PublishDate], [CreateBy], [CreatebyName], [CreateDate], [LastUpdateBy], [LastUpdateByName], [LastUpdateDate]) VALUES (2, N'SQL中的 XACT_ABORT{ ON | OFF }', N'SQL Server（从 2008 开始），可以通过设置XACT_ABORT来指定当 SQL Server 语句出现运行时错误时， Transact-SQL 是否自动回滚当前事务。', N'SQL,XACT_ABORT', N'SQL Server（从 2008 开始），可以通过设置XACT_ABORT来指定当 SQL Server 语句出现运行时错误时， Transact-SQL 是否自动回滚当前事务。', 8, 5, NULL, N'<p>SQL Server（从 2008 开始），可以通过设置XACT_ABORT来指定当 SQL Server 语句出现运行时错误时， Transact-SQL 是否自动回滚当前事务。</p>
<h3>XACT_ABORT</h3>
<p>语法：</p>
<pre>SET XACT_ABORT { ON | OFF }</pre>
<p>&nbsp;&nbsp;</p>
<ul>
<li>当 SET XACT_ABORT 为 ON 时，如果执行&nbsp;Transact-SQL&nbsp;语句产生运行时错误，则整个事务将终止并回滚。</li>
<li>当 SET XACT_ABORT 为 OFF 时，有时只回滚产生错误的&nbsp;Transact-SQL&nbsp;语句，而事务将继续进行处理。&nbsp;如果错误很严重，那么即使 SET XACT_ABORT 为 OFF，也可能回滚整个事务。&nbsp;OFF 是默认设置。</li>
</ul>
<p>&nbsp;</p>
<p>编译错误（如语法错误）不受 SET XACT_ABORT 的影响。</p>
<p>对于大多数 OLE DB 访问接口（包括&nbsp;SQL Server），必须将隐式或显示事务中的数据修改语句中的 XACT_ABORT 设置为 ON。&nbsp;唯一不需要该选项的情况是在提供程序支持嵌套事务时。</p>
<p>当 ANSI_WARNINGS=OFF 时，违反权限的行为导致事务中止。</p>
<p>SET XACT_ABORT 的设置是在执行或运行时设置，而不是在分析时设置。</p>
<p>要查看此设置的当前设置，请运行以下查询。</p>
<pre>DECLARE @XACT_ABORT VARCHAR(3) = ''OFF''; <br />IF ( (16384 &amp; @@OPTIONS) = 16384 ) SET @XACT_ABORT = ''ON''; <br />SELECT @XACT_ABORT AS XACT_ABORT;</pre>
<p>原文链接：<a href="https://docs.microsoft.com/en-us/sql/t-sql/statements/set-xact-abort-transact-sql" target="_blank" rel="noopener">https://docs.microsoft.com/en-us/sql/t-sql/statements/set-xact-abort-transact-sql</a></p>
<p></p>', 1, N'/themes/blog/images/sql.png', NULL, 1, CAST(N'2018-04-03 11:00:32.153' AS DateTime), N'admin', N'ZKEASOFT', CAST(N'2017-11-19 23:53:16.000' AS DateTime), N'admin', N'ZKEASOFT', CAST(N'2018-04-03 11:00:32.153' AS DateTime))
INSERT [dbo].[Article] ([ID], [Title], [Summary], [MetaKeyWords], [MetaDescription], [Counter], [ArticleTypeID], [Description], [ArticleContent], [Status], [ImageThumbUrl], [ImageUrl], [IsPublish], [PublishDate], [CreateBy], [CreatebyName], [CreateDate], [LastUpdateBy], [LastUpdateByName], [LastUpdateDate]) VALUES (3, N'JavaScript 数组删除的几种方式', N'JavaScript 数组删除的几种方式，shift，slice，pop，filter', N'JavaScript 数组删除，shift，slice，pop，filter', N'JavaScript 数组删除的几种方式，shift，slice，pop，filter', NULL, 3, NULL, N'<h3>按索引删除</h3>
<pre>//1
someArray.shift(); // 删除第一个元素
//2
someArray = someArray.slice(1); // 删除第一个元素
//3
someArray.splice(0,1); // 删除第一个元素
//4
someArray.pop(); // 删除最后一个元素
</pre>
<h3>按条件删除</h3>
<pre>someArray = [{name:"Kristian", lines:"2,5,10"},
             {name:"John", lines:"1,19,26,96"},
             {name:"Brian",lines:"3,9,62,36" }];
johnRemoved = someArray.filter(function(el) {
    return el.name !== "John";
});

console.log(JSON.stringify(johnRemoved, null, '' ''));</pre>', 1, N'/themes/blog/images/javascript.jpg', NULL, 1, CAST(N'2018-04-03 10:48:28.863' AS DateTime), N'admin', N'ZKEASOFT', CAST(N'2018-04-03 10:48:28.853' AS DateTime), N'admin', N'ZKEASOFT', CAST(N'2018-04-03 10:48:28.863' AS DateTime))
INSERT [dbo].[Article] ([ID], [Title], [Summary], [MetaKeyWords], [MetaDescription], [Counter], [ArticleTypeID], [Description], [ArticleContent], [Status], [ImageThumbUrl], [ImageUrl], [IsPublish], [PublishDate], [CreateBy], [CreatebyName], [CreateDate], [LastUpdateBy], [LastUpdateByName], [LastUpdateDate]) VALUES (4, N'CSS 的一些常用技巧', N'下面这些CSS常用技巧，学会了，你也是前端达人。', N'CSS 技巧', N'下面这些CSS常用技巧，学会了，你也是前端达人。', NULL, 4, NULL, N'<h2>使用 :not() 在菜单上应用/取消应用边框</h2>
<p>先给每一个菜单项添加边框</p>
<div>
<pre>/* add border */
.nav li {
  border-right: 1px solid #666;
}
</pre>
</div>
<p>&hellip;&hellip;然后再除去最后一个元素&hellip;&hellip;</p>
<p>//* remove border */</p>
<div>
<pre>.nav li:last-child {
  border-right: none;
}
</pre>
</div>
<p>&hellip;&hellip;可以直接使用 :not() 伪类来应用元素：</p>
<div>
<pre>.nav li:not(:last-child) {
  border-right: 1px solid #666;
}
</pre>
</div>
<p>这样代码就干净，易读，易于理解了。</p>
<p>当然，如果你的新元素有兄弟元素的话，也可以使用通用的兄弟选择符（~）：</p>
<p>..nav li:first-child ~ li {</p>
<div>
<pre>  border-left: 1px solid #666;
}</pre>
</div>
<h2>逗号分隔的列表</h2>
<p>让HTML列表项看上去像一个真正的，用逗号分隔的列表：</p>
<div>
<pre>ul &gt; li:not(:last-child)::after {
  content: ",";
}
</pre>
</div>
<p>对最后一个列表项使用 :not() 伪类。</p>
<h2>使用负的 nth-child 选择项目</h2>
<p>在CSS中使用负的 nth-child 选择项目1到项目n。</p>
<div>
<pre>li {
  display: none;
}

/* select items 1 through 3 and display them */
li:nth-child(-n+3) {
  display: block;
}
</pre>
</div>
<p>就是这么容易。</p>
<h2>对图标使用SVG</h2>
<p>我们没有理由不对图标使用SVG：</p>
<div>
<pre>.logo {
  background: url("logo.svg");
}
</pre>
</div>
<p>SVG对所有的分辨率类型都具有良好的扩展性，并支持所有浏览器都回归到IE9。这样可以避开.png、.jpg或.gif文件了。</p>
<h2>优化显示文本</h2>
<p>有时，字体并不能在所有设备上都达到最佳的显示，所以可以让设备浏览器来帮助你：</p>
<div>
<pre>html {
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased;
  text-rendering: optimizeLegibility;
}
</pre>
</div>
<p>注：请负责任地使用 optimizeLegibility。此外，IE /Edge没有 text-rendering 支持。</p>
<h2>对纯CSS滑块使用 max-height</h2>
<p>使用 max-height 和溢出隐藏来实现只有CSS的滑块：</p>
<div>
<pre>.slider ul {
  max-height: 0;
  overlow: hidden;
}

.slider:hover ul {
  max-height: 1000px;
  transition: .3s ease;
}
</pre>
</div>
<h2>继承 box-sizing</h2>
<p>让 box-sizing 继承 html：</p>
<div>
<pre>html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}
</pre>
</div>
<p>这样在插件或杠杆其他行为的其他组件中就能更容易地改变 box-sizing 了。</p>
<h2>表格单元格等宽</h2>
<p>表格工作起来很麻烦，所以务必尽量使用 table-layout: fixed 来保持单元格的等宽：</p>
<div>
<pre>.calendar {
  table-layout: fixed;
}</pre>
</div>
<h2>使用属性选择器用于空链接</h2>
<p>当 &lt;a&gt; 元素没有文本值，但 href 属性有链接的时候显示链接：</p>
<div>
<pre>a[href^="http"]:empty::before {
  content: attr(href);
}
</pre>
</div>
<p>相当方便。</p>', 1, N'/themes/blog/images/css.png', NULL, 1, CAST(N'2018-04-03 10:49:37.457' AS DateTime), N'admin', N'ZKEASOFT', CAST(N'2018-04-03 10:49:37.400' AS DateTime), N'admin', N'ZKEASOFT', CAST(N'2018-04-03 10:49:37.457' AS DateTime))
INSERT [dbo].[Article] ([ID], [Title], [Summary], [MetaKeyWords], [MetaDescription], [Counter], [ArticleTypeID], [Description], [ArticleContent], [Status], [ImageThumbUrl], [ImageUrl], [IsPublish], [PublishDate], [CreateBy], [CreatebyName], [CreateDate], [LastUpdateBy], [LastUpdateByName], [LastUpdateDate]) VALUES (5, N'Linux 如何获取命令的完整路径', N'在一些时候，会需要知道执行命令的完整路径，如添加服务时，就要写完整的路径', N'Linux命令路径', N'在一些时候，会需要知道执行命令的完整路径，如添加服务时，就要写完整的路径，那么应该如何得到这个路径呢？', 3, 6, NULL, N'<p>在一些时候，会需要知道执行命令的完整路径，如添加服务时，就要写完整的路径，那么应该如何得到这个路径呢？</p>
<h3>type 命令</h3>
<p>type 命令用于查询命令的别名，功能，是否是builtin命令或可执行命令文件。一般用法：</p>
<pre><span>type {command-name}</span></pre>
<p>例如查询dotnet命令的路径，可以这样输入</p>
<pre>type dotnet</pre>
<p>输出</p>
<p>dotnet is /usr/bin/dotnet</p>
<h3>whereis 命令</h3>
<p><span>whereis会得到很多条结果，因为这个命令把所有包含（不管是文件还是文件夹）的路径都列了出来。</span></p>
<pre><span>whereis dotnet</span></pre>
<p><span>输出</span></p>
<p><span>dotnet: /usr/bin/dotnet /usr/local/bin/dotnet /usr/share/dotnet /usr/share/man/man1/dotnet.1<br /></span></p>
<h3><span>which 命令</span></h3>
<p><span>which 返回的是 PATH路径中第一个位置，也就是命令默认执行的位置</span></p>
<pre><span> which dotnet<br /></span></pre>
<p><span>输出</span></p>
<p><span>/usr/bin/dotnet<br /></span></p>', 1, N'/themes/blog/images/linux.jpg', NULL, 1, CAST(N'2018-04-03 10:51:03.177' AS DateTime), N'admin', N'ZKEASOFT', CAST(N'2018-04-03 10:51:03.160' AS DateTime), N'admin', N'ZKEASOFT', CAST(N'2018-04-03 10:51:03.177' AS DateTime))
SET IDENTITY_INSERT [dbo].[Article] OFF

GO
