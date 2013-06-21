.class public Lcom/superdroid/rpc/forum/calls/event/GetEventLogResponse;
.super Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
.source "GetEventLogResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x592ec7d4e5be4c66L


# instance fields
.field public _eventlogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/EventLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;-><init>()V

    return-void
.end method
