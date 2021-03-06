%% @author Alain O'Dea <alain.odea@gmail.com>
%% @copyright 2009 Alain O'Dea.
%% @doc ScrumJet Home.

-module(scrumjet_resource).
-author('Alain O\'Dea <alain.odea@gmail.com>').
-export([init/1, to_html/2]).

-include_lib("webmachine/include/webmachine.hrl").

init([]) -> {ok, undefined}.

to_html(ReqData, Context) ->
    {<<"<!DOCTYPE html>
<html>
<head>
<title>Welcome! - ScrumJet</title>
</head>
<body>
<h1>Welcome to ScrumJet!</h1>
<ul id='views'>
<li><a id='tasks' href='tasks/'>Tasks</a></li>
<li><a id='categories' href='categories/'>Categories</a></li>
<li><a id='board' href='boards/'>Boards</a></li>
</ul>
</body>
</html>
">>, ReqData, Context}.
