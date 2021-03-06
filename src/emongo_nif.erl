%%%----------------------------------------------------------------------
%%% File    : emongo_nif.erl
%%% @author : Jeet Parmar <jeet@glabbr.com>
%%% Purpose : Emongo nif bindings.
%%% Created : 15 Dec 2018 by Jeet Parmar <jeet@glabbr.com>
%%%
%%% Copyright (C) 2002-2019 Glabbr India Pvt. Ltd. All Rights Reserved.
%%%
%%% Licensed under the GNU GPL License, Version 3.0 (the "License");
%%% you may not use this file except in compliance with the License.
%%% You may obtain a copy of the License at
%%%
%%%     https://www.gnu.org/licenses/gpl-3.0.en.html
%%%
%%% Unless required by applicable law or agreed to in writing, software
%%% distributed under the License is distributed on an "AS IS" BASIS,
%%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%%% See the License for the specific language governing permissions and
%%% limitations under the License.
%%%
%%%----------------------------------------------------------------------

-module(emongo_nif).

-author('jeet@glabbr.com').

-export([init/0, connect/2, connect/1,
  find_all/2, find_all/3,
  find_by_id/3,
  find/3, find/4,
  exists/3,
  count/4, count/5,
  insert/4, insert/5,
  update_by_id/5, update_by_id/6,
  update_by_query/6, update_by_query/7,
  delete_by_id/3, delete_by_id/4,
  delete_by_query/4, delete_by_query/5,
  list_databases/1, list_collections/2,
  collection_exists/3, create_collection/4,
  set_read_concern/4,
  set_write_concern/4,
  drop_db/2,
  drop_collection/3,
  rename_collection/4,
  run_command/3]).


init() ->
  case code:which(emongo_app) of
    Filename when is_list(Filename) ->
      erlang:load_nif(filename:join([filename:dirname(Filename),
        "..", "priv",
        "emongo"]), 0);
    Reason when is_atom(Reason) ->
      {error, Reason}
  end.


-spec connect(string()) -> {ok, binary()}.
connect(Uri) ->
  connect("default", Uri).

-spec connect(string(), string()) -> {ok, binary()}.
connect(_ConnectionId, _Uri) ->
  erlang:nif_error(nif_library_not_loaded).


-spec find_all(string(), string()) -> {ok, binary()}.
find_all(_Conn, _Collection) ->
  erlang:nif_error(nif_library_not_loaded).

-spec find_all(string(), string(), map()) -> {ok, binary()}.
find_all(_Conn, _Collection, _Opts) ->
  erlang:nif_error(nif_library_not_loaded).

-spec find_by_id(string(), string(), string()) -> {ok, binary()}.
find_by_id(_Conn, _Collection, _Filter) ->
  erlang:nif_error(nif_library_not_loaded).

-spec find(string(), string(), string()) -> {ok, binary()}.
find(_Conn, _Collection, _Filter) ->
  erlang:nif_error(nif_library_not_loaded).

-spec find(string(), string(), string(), map()) -> {ok, binary()}.
find(_Conn, _Collection, _Filter, _Opts) ->
  erlang:nif_error(nif_library_not_loaded).

-spec exists(string(), string(), string()) -> {ok, binary()}.
exists(_Conn, _Collection, _Filter) ->
  erlang:nif_error(nif_library_not_loaded).

-spec count(string(), string(), string(), string()) -> {ok, binary()}.
count(_Conn, _DbName, _Collection, _Query) ->
  erlang:nif_error(nif_library_not_loaded).

-spec count(string(), string(), string(), string(), map()) -> {ok, binary()}.
count(_Conn, _DbName, _Collection, _Query, _Opts) ->
  erlang:nif_error(nif_library_not_loaded).


-spec insert(string(), string(), integer(), string()) -> {ok, binary()}.
insert(_Conn, _Collection, _LenOfJsonData, _JsonData) ->
  erlang:nif_error(nif_library_not_loaded).

-spec insert(string(), string(), integer(), string(), map()) -> {ok, binary()}.
insert(_Conn, _Collection, _LenOfJsonData, _JsonData, _Opts) ->
  erlang:nif_error(nif_library_not_loaded).


-spec update_by_id(string(), string(), string(), integer(), string()) -> {ok, binary()}.
update_by_id(_Conn, _Collection, _Id, _LenOfJsonData, _JsonData) ->
  erlang:nif_error(nif_library_not_loaded).

-spec update_by_id(string(), string(), string(), integer(), string(), map()) -> {ok, binary()}.
update_by_id(_Conn, _Collection, _Id, _LenOfJsonData, _JsonData, _Opts) ->
  erlang:nif_error(nif_library_not_loaded).


-spec update_by_query(string(), string(), integer(), string(), integer(), string()) -> {ok, binary()}.
update_by_query(_Conn, _Collection, _LenOfJsonQuery, _JsonQuery, _LenOfJsonData, _JsonData) ->
  erlang:nif_error(nif_library_not_loaded).

-spec update_by_query(string(), string(), integer(), string(), integer(), string(), map()) -> {ok, binary()}.
update_by_query(_Conn, _Collection, _LenOfJsonQuery, _JsonQuery, _LenOfJsonData, _JsonData, _Opts) ->
  erlang:nif_error(nif_library_not_loaded).

-spec delete_by_id(string(), string(), string()) -> {ok, binary()}.
delete_by_id(_Conn, _Collection, _Id) ->
  erlang:nif_error(nif_library_not_loaded).

-spec delete_by_id(string(), string(), string(), map()) -> {ok, binary()}.
delete_by_id(_Conn, _Collection, _Id, _Opts) ->
  erlang:nif_error(nif_library_not_loaded).

-spec delete_by_query(string(), string(), integer(), string()) -> {ok, binary()}.
delete_by_query(_Conn, _Collection, _LenOfJsonQuery, _JsonQuery) ->
  erlang:nif_error(nif_library_not_loaded).

-spec delete_by_query(string(), string(), integer(), string(), map()) -> {ok, binary()}.
delete_by_query(_Conn, _Collection, _LenOfJsonQuery, _JsonQuery, _Opts) ->
  erlang:nif_error(nif_library_not_loaded).

-spec list_databases(string()) -> {ok, binary()}.
list_databases(_Conn) ->
  erlang:nif_error(nif_library_not_loaded).

-spec list_collections(string(), string()) -> {ok, binary()}.
list_collections(_Conn, _DbName) ->
  erlang:nif_error(nif_library_not_loaded).

-spec collection_exists(string(), string(), string()) -> {ok, binary()}.
collection_exists(_Conn, _DbName, _Collection) ->
  erlang:nif_error(nif_library_not_loaded).

-spec create_collection(port(), string(), string(), map()) -> {ok, binary()}.
create_collection(_Conn, _DbName, _Collection, _Opts) ->
  erlang:nif_error(nif_library_not_loaded).

-spec set_read_concern(port(), string(), string(), map()) -> {ok, binary()}.
set_read_concern(_Conn, _DbName, _Collection, _Opts) ->
  erlang:nif_error(nif_library_not_loaded).

-spec set_write_concern(port(), string(), string(), map()) -> {ok, binary()}.
set_write_concern(_Conn, _DbName, _Collection, _Opts) ->
  erlang:nif_error(nif_library_not_loaded).

-spec drop_db(string(), string()) -> {ok, binary()}.
drop_db(_Conn, _DbName) ->
  erlang:nif_error(nif_library_not_loaded).

-spec drop_collection(string(), string(), string()) -> {ok, binary()}.
drop_collection(_Conn, _DbName, _Collection) ->
  erlang:nif_error(nif_library_not_loaded).

-spec rename_collection(port(), string(), string(), map()) -> {ok, binary()}.
rename_collection(_Conn, _DbName, _Collection, _Opts) ->
  erlang:nif_error(nif_library_not_loaded).

-spec run_command(port(), string(), string()) -> {ok, binary()}.
run_command(_Conn, _DbName, _Collection) ->
  erlang:nif_error(nif_library_not_loaded).


