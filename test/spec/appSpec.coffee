#说明：
#所有功能均已测试通过，若重新测试，删除注释重新运行karma即可(讨论组Id可能需要修改)
# describe "RongIMClient",->
#     RongIMLib.RongIMClient.init "8luwapkvucoil"
#     RongIMLib.RongIMClient.setOnReceiveMessageListener onReceived: (message) ->
#       console.log message.content.content
#       console.log message
#     RongIMLib.RongIMClient.setConnectionStatusListener onChanged: (status) ->
#       switch status
#           when RongIMLib.ConnectionStatus.CONNECTED
#             console.log "链接成功"
#           when RongIMLib.ConnectionStatus.CONNECTING
#             console.log "正在链接"
#           when RongIMLib.ConnectionStatus.DISCONNECTED
#             console.log "断开连接"
#           else console.log "状态为解析:"+status
#     RongIMLib.RongIMClient.connect "BIG85AHHpMAXYvnD2DSgnLrkPG6U/xPk3zvPIWf9le1hEGTTL55/U07yY3a+mzGazeB0RzEl9Y46MnCyDLVMAw==",
#         onSuccess:(userId)->
#             console.log("loginSuccess,userId."+userId)
#         onError:(error)->
#            switch error
#               when RongIMLib.ConnectionState.SERVER_UNAVAILABLE
#                 console.log "SERVER_UNAVAILABLE"
#               when RongIMLib.ConnectionState.TOKEN_INCORRECT
#                 console.log "token 无效"
#               else
#                 console.log error
    # it "getRemotePublicServiceList",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().getRemotePublicServiceList();
    #         done()
    #     ,500);
    # it "registerMessageType",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.registerMessageType 's:empty','EmptyMessage',new RongIMLib.MessageTag(true,true),['Name','Age','Address']
    #         done()
    #     ,50);
    # it "sendMessage",(done)->
    #     setTimeout(->
    #         message = RongIMLib.TextMessage.obtain("rongcloud")
    #         #message = new EmptyMessage({Name:'悲伤2015',Age:18,Address:"beijing"});
    #         RongIMLib.RongIMClient.getInstance().sendMessage RongIMLib.ConversationType.PRIVATE, "1005", message,
    #           onSuccess: (data)->
    #             console.log JSON.stringify(data)
    #             done()
    #           onError: (errorcode)->
    #             console.log errorcode
    #     ,1000)
    # it "sendTextMessage",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().sendTextMessage RongIMLib.ConversationType.PRIVATE, "1005", "我是TextMessage123123",
    #           onSuccess: (data)->
    #                 console.log "SendTextMessage Successfully"
    #                 done()
    #           onError: (errorcode)->
    #                 console.log errorcode
    #     ,1000)
    # it "createConversation",(done)->
    #     setTimeout(->
    #         conversation = RongIMLib.RongIMClient.getInstance().createConversation RongIMLib.ConversationType.PRIVATE,"zhaoliu","小标题",true;
    #         console.log(conversation)
    #         done()
    #     ,1000)
    #
    # it "getConversationList",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().getConversationList
    #             onSuccess:(list)->
    #                 console.log list
    #                 done()
    #             onError:(error)->
    #                 console.log "GetConversationList,errorcode:"+error
    #     ,100)
    # it "setConversationToTop",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().setConversationToTop RongIMLib.ConversationType.PRIVATE,"1005",
    #             onSuccess:(isTop)->
    #                 console.log "setTop:"+isTop
    #                 done()
    #             onError:(error)->
    #                 console.log "SetConversationToTop,errorcode:"+error
    #     ,200)
    # it "removeConversation",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().removeConversation RongIMLib.ConversationType.PRIVATE,"1005",
    #             onSuccess:(isRemove)->
    #                 console.log "removeConversation:"+isRemove
    #                 done()
    #             onError:(error)->
    #                 console.log "removeConversation,errorcode:"+error
    #     ,210)
    # it "getConversation",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().getConversation RongIMLib.ConversationType.PRIVATE,"1003",
    #             onSuccess:(conver,hasConver)->
    #                 console.log conver
    #                 done()
    #             onError:(error)->
    #                 console.log "getConversation,errorcode:"+error
    #     ,220)
    # it "clearConversations ",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().clearConversations
    #             onSuccess:(isOk)->
    #                 console.log isOk
    #                 done()
    #             onError:(error)->
    #                 console.log "clearConversations,errorcode:"+error
    #     ,230)
    # it "getUserInfo",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().getUserInfo "1003",
    #             onSuccess:(info)->
    #                 console.log info
    #                 done()
    #             onError:(error)->
    #                 console.log "GetUserInfo,errorcode:"+error
    #     ,500)
    # it "getHistoryMessages",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().getHistoryMessages 4,"1002",null,2,
    #             onSuccess:(list,hasMsg)->
    #                 console.log(list)
    #                 done()
    #             onError:(error)->
    #                 console.log "GetHistoryMessages,errorcode:"+error
    #     ,200)
    # it "hasRemoteUnreadMessages",->
    #     RongIMLib.RongIMClient.getInstance().hasRemoteUnreadMessages "0Qs6YHRj2p45jxfKS40Io3U1lgYP6zEv1OpCrfDse9JiBi4BNyqa2E2dH7xIEfEE9lfCByjdxCqYNAuDFMk66A==",
    #         onSuccess:(hasMsg)->
    #             console.log hasMsg
    #         onError:(error)->
    #             console.log "HasUnreadMessages,errorcode:"+error
    # it "CreateDiscussion",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().createDiscussion "WebSDKV2-Dis-Name",["1001","1002"],
    #             onSuccess:(discussId)->
    #                 console.log "Discussion's id is "+discussId
    #                 done()
    #             onError:(error)->
    #                 done()
    #                 console.log "CreateDiscussion:errorcode:"+error
    #     ,102)
    # it "addMemberToDiscussion",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().addMemberToDiscussion "ff636ffe-5b90-4897-b998-e27c1f03ef6b",["1004"],
    #             onSuccess:()->
    #                 console.log "addMemberToDiscussion Successfully"
    #                 done()
    #             onError:(error)->
    #                 console.log "AddMemberToDiscussion:errorcode:"+error
    #                 done()
    #     ,110)
    # it "getDiscussion",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().getDiscussion "ff636ffe-5b90-4897-b998-e27c1f03ef6b",
    #             onSuccess:(discuss)->
    #                 console.log discuss
    #                 done()
    #             onError:(error)->
    #                 console.log "GetDiscussion:errorcode:"+error
    #                 done()
    #     ,130)
    # it "quitDiscussion",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().quitDiscussion "ff636ffe-5b90-4897-b998-e27c1f03ef6b",
    #             onSuccess:()->
    #                 console.log "QuitDiscussion Successfully"
    #                 done()
    #             onError:(error)->
    #                 console.log "QuitDiscussion:errorcode:"+error
    #                 done()
    #     ,201)
    # it "removeMemberFromDiscussion",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().removeMemberFromDiscussion "2af24046-e089-4e7a-a05b-ffa14ab1b92e","1002",
    #             onSuccess:()->
    #                 console.log "RemoveMember Successfully"
    #                 done()
    #             onError:(error)->
    #                 console.log "RemoveMember:errorcode:"+error
    #                 done()
    #     ,202)
    # it "setDiscussionInviteStatus",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().setDiscussionInviteStatus "ff636ffe-5b90-4897-b998-e27c1f03ef6b",RongIMLib.DiscussionInviteStatus.CLOSED,
    #             onSuccess:()->
    #                 console.log "setDiscussionInviteStatus Successfully"
    #                 done()
    #             onError:(error)->
    #                 console.log "setDiscussionInviteStatus:errorcode:"+error
    #                 done()
    #     ,203)
    # it "setDiscussionName",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().setDiscussionName "ff636ffe-5b90-4897-b998-e27c1f03ef6b","大融云",
    #             onSuccess:()->
    #                 console.log "setDiscussionName Successfully"
    #                 done()
    #             onError:(error)->
    #                 console.log "setDiscussionName:errorcode:"+error
    #                 done()
    #     ,301)
    # it "joinGroup",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().joinGroup "cocalGroup","WskTestGroup",
    #             onSuccess:()->
    #                 console.log "joinGroup Successfully"
    #                 done()
    #             onError:(error)->
    #                 console.log "joinGroup:errorcode:"+error
    #                 done()
    #     ,302)
    # it "quitGroup",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().quitGroup "cocalGroup",
    #             onSuccess:()->
    #                 console.log "quitGroup Successfully"
    #                 done()
    #             onError:(error)->
    #                 console.log "quitGroup:errorcode:"+error
    #                 done()
    #     ,305)
    # it "joinChatRoom",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().joinChatRoom "chatRoom2015",2,
    #             onSuccess:()->
    #                 console.log "joinChatRoom Successfully"
    #                 done()
    #             onError:(error)->
    #                 console.log "joinChatRoom:errorcode:"+error
    #                 done()
    #     ,310)
    # it "quitChatRoom",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().quitChatRoom "chatRoom2015",
    #             onSuccess:()->
    #                 console.log "quitChatRoom Successfully"
    #                 done()
    #             onError:(error)->
    #                 console.log "quitChatRoom:errorcode:"+error
    #                 done()
    #     ,1820)
    # it "addToBlacklist",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().addToBlacklist "1002",
    #             onSuccess:()->
    #                 console.log "addToBlacklist Successfully"
    #                 done()
    #             onError:(error)->
    #                 console.log "addToBlacklist:errorcode:"+error
    #                 done()
    #     ,400)
    # it "getBlacklist",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().getBlacklist
    #             onSuccess:(data)->
    #                 console.log data
    #                 done()
    #             onError:(error)->
    #                 console.log "getBlacklist:errorcode:"+error
    #                 done()
    #     ,405)
    # it "getBlacklistStatus",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().getBlacklistStatus "1002",
    #             onSuccess:(status)->
    #                 console.log status
    #                 done()
    #             onError:(error)->
    #                 console.log "getBlacklistStatus:errorcode:"+error
    #                 done()
    #     ,410)
    # it "removeFromBlacklist",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().removeFromBlacklist "1002",
    #             onSuccess:()->
    #                 console.log "removeFromBlacklist Successfully"
    #                 done()
    #             onError:(error)->
    #                 console.log "removeFromBlacklist:errorcode:"+error
    #                 done()
    #     ,412)
    # it "saveTextMessageDraft",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().saveTextMessageDraft RongIMLib.ConversationType.PRIVATE,"1005","drafTextMessageTest hello!!!",
    #             onSuccess:()->
    #                 console.log "saveTextMessageDraft Successfully"
    #                 done()
    #             onError:(error)->
    #                 console.log "saveTextMessageDraft:errorcode:"+error
    #                 done()
    #     ,340)
    # it "getTextMessageDraft",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().getTextMessageDraft RongIMLib.ConversationType.PRIVATE,"1005",
    #             onSuccess:(draf)->
    #                 console.log "GetTextMessageDraf:"+draf
    #                 done()
    #             onError:(error)->
    #                 console.log "getTextMessageDraft:errorcode:"+error
    #                 done()
    #     ,345)
    # it "clearTextMessageDraft",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().clearTextMessageDraft RongIMLib.ConversationType.PRIVATE,"1002",
    #             onSuccess:(isClear)->
    #                 console.log "clearTextMessageDraft:"+isClear
    #                 done()
    #             onError:(error)->
    #                 console.log "clearTextMessageDraft:errorcode:"+error
    #                 done()
    #     ,350)
    # it "getTotalUnreadCount",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().getTotalUnreadCount
    #             onSuccess:(count)->
    #                 console.log "TotalUnreadCount:"+count
    #                 done()
    #             onError:(error)->
    #                 console.log "getTotalUnreadCount:errorcode:"+error
    #                 done()
    #     ,700)
    # it "getConversationUnreadCount",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().getConversationUnreadCount [RongIMLib.ConversationType.PRIVATE],
    #             onSuccess:(count)->
    #                 console.log "getConversationUnreadCount:"+count
    #                 done()
    #             onError:(error)->
    #                 console.log "getConversationUnreadCount:errorcode:"+error
    #     ,710)
    # it "getUnreadCount",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().getUnreadCount RongIMLib.ConversationType.PRIVATE,"lisi",
    #             onSuccess:(count)->
    #                 console.log "getUnreadCount:"+count
    #                 done()
    #             onError:(error)->
    #                 console.log "getUnreadCount:errorcode:"+error
    #     ,712)
    # it "getCurrentConnectionStatus",(done)->
    #     setTimeout(->
    #         status = RongIMLib.RongIMClient.getInstance().getCurrentConnectionStatus()
    #         switch status
    #             when RongIMLib.ConnectionStatus.CONNECTED
    #               console.log "已连接"
    #               done()
    #             when RongIMLib.ConnectionStatus.DISCONNECTED
    #               console.log "已断开"
    #               done()
    #             else console.log "状态为解析:"+status
    #     ,720)
    # it "getConnectionChannel",(done)->
    #     setTimeout(->
    #         channel = RongIMLib.RongIMClient.getInstance().getConnectionChannel()
    #         switch channel
    #             when 1
    #               console.log "websocket"
    #               done()
    #             when 2
    #               console.log "xhr-polling"
    #               done()
    #             else console.log "状态为解析:"+status
    #     ,730)
    # it "getStorageProvider",(done)->
    #     setTimeout(->
    #         provider = RongIMLib.RongIMClient.getInstance().getStorageProvider()
    #         console.log(provider)
    #         done()
    #     ,740)
    # it "getCurrentUserId",(done)->
    #     setTimeout(->
    #         userId = RongIMLib.RongIMClient.getInstance().getCurrentUserId()
    #         console.log(userId)
    #         done()
    #     ,741)
    # it "getCurrentUserInfo",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().getCurrentUserInfo
    #             onSuccess:(info)->
    #                 console.log info
    #                 done()
    #             onError:(error)->
    #                 console.log "getCurrentUserInfo:errorcode:"+error
    #                 done()
    #     ,750)
    # it "disconnect ",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.getInstance().disconnect()
    #         done()
    #     ,2600)
    # it "reconnect  ",(done)->
    #     setTimeout(->
    #         RongIMLib.RongIMClient.reconnect
    #             onSuccess:()->
    #                 console.log "reconnect Successfully"
    #                 done()
    #             onError:()->
    #                 console.log "reconnect:error"
    #                 done()
    #         done()
    #     ,1500)
