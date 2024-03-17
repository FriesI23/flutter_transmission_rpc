// Copyright (c) 2024 Fries_I23
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

import 'model/blocklist_update.dart';
import 'model/free_space.dart';
import 'model/group_get.dart';
import 'model/group_set.dart';
import 'model/port_test.dart';
import 'model/queue_move.dart';
import 'model/session_close.dart';
import 'model/session_get.dart';
import 'model/session_set.dart';
import 'model/session_stats.dart';
import 'model/torrent_action.dart';
import 'model/torrent_add.dart';
import 'model/torrent_get.dart';
import 'model/torrent_move.dart';
import 'model/torrent_remove.dart';
import 'model/torrent_rename.dart';
import 'model/torrent_set.dart';
import 'request.dart';
import 'response.dart';

typedef JsonMap = Map<String, dynamic>;
typedef RpcTag = num;

// api
typedef _ApiResponse<T extends RequestParam, V extends ResponseParam>
    = TransmissionRpcResponse<V, TransmissionRpcRequest<T>>;
// torrent-<action>
typedef TorrentActionResponse<T extends TorrentActionReqeustParam>
    = _ApiResponse<T, TorrentActionResponseParam>;
// torrent-get
typedef TorrentGetResponse
    = _ApiResponse<TorrentGetRequestParam, TorrentGetResponseParam>;
// torretn-set
typedef TorrentSetResponse
    = _ApiResponse<TorrentSetRequestParam, TorrentSetResponseParam>;
// torrent-remove
typedef TorrentRemoveResponse
    = _ApiResponse<TorrentRemoveRequestParam, TorrentRemoveResponseParam>;
// torrent-add
typedef TorrentAddResponse
    = _ApiResponse<TorrentAddRequestParam, TorrentAddResponseParam>;
// torrent-set-location
typedef TorrentSetLocationResponse = _ApiResponse<
    TorrentSetLocationRequestParam, TorrentSetLocationResponseParam>;
// torrent-rename-path
typedef TorrentRenamePathResponse = _ApiResponse<TorrentRenamePathRequestParam,
    TorrentRenamePathResponseParam>;
// session-get
typedef SessionGetResponse
    = _ApiResponse<SessionGetRequestParam, SessionGetResponseParam>;
// session-set
typedef SessionSetResponse
    = _ApiResponse<SessionSetRequestParam, SessionSetResponseParam>;
// session-stats
typedef SessionStatsResponse
    = _ApiResponse<SessionStatsRequestParam, SessionStatsResponseParam>;
// blocklist-update
typedef BlocklistUpdateResponse
    = _ApiResponse<BlocklistUpdateRequestParam, BlocklistUpdateResponseParam>;
// port-test
typedef PortTestResponse
    = _ApiResponse<PorTestRequestParam, PortTestResponseParam>;
// session-close
typedef SessionCloseResponse
    = _ApiResponse<SessionCloseRequestParam, SessionCloseResponseParam>;
// queue-move-*
typedef QueueMoveResponse<T extends QueueMoveRequestParam>
    = _ApiResponse<T, QueueMoveResponseParam>;
// free-space
typedef FreeSpaceResponse
    = _ApiResponse<FreeSpaceRequestParam, FreeSpaceResponseParam>;
// group-get
typedef GroupGetResponse
    = _ApiResponse<GroupGetRequestParam, GroupGetResponseParam>;
// group-set
typedef GroupSetResponse
    = _ApiResponse<GroupSetRequestParam, GroupSetResponseParam>;
