.class Lcom/superdroid/sqd/SmsDeleteActivity$2;
.super Ljava/lang/Object;
.source "SmsDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superdroid/sqd/SmsDeleteActivity;->deleteSMSs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/superdroid/sqd/SmsDeleteActivity;


# direct methods
.method constructor <init>(Lcom/superdroid/sqd/SmsDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/superdroid/sqd/SmsDeleteActivity$2;->this$0:Lcom/superdroid/sqd/SmsDeleteActivity;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 162
    iget-object v4, p0, Lcom/superdroid/sqd/SmsDeleteActivity$2;->this$0:Lcom/superdroid/sqd/SmsDeleteActivity;

    #getter for: Lcom/superdroid/sqd/SmsDeleteActivity;->_mapCheckBoxStatus:Ljava/util/Map;
    invoke-static {v4}, Lcom/superdroid/sqd/SmsDeleteActivity;->access$3(Lcom/superdroid/sqd/SmsDeleteActivity;)Ljava/util/Map;

    move-result-object v4

    .line 163
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 164
    .local v3, setEntry:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Lcom/superdroid/sqd/data/IdType;Ljava/lang/Boolean;>;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 165
    .local v2, listIds:Ljava/util/List;,"Ljava/util/List<Lcom/superdroid/sqd/data/IdType;>;"
    iget-object v4, p0, Lcom/superdroid/sqd/SmsDeleteActivity$2;->this$0:Lcom/superdroid/sqd/SmsDeleteActivity;

    #getter for: Lcom/superdroid/sqd/SmsDeleteActivity;->_threadId:I
    invoke-static {v4}, Lcom/superdroid/sqd/SmsDeleteActivity;->access$4(Lcom/superdroid/sqd/SmsDeleteActivity;)I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/superdroid/sqd/SmsDeleteActivity$2;->this$0:Lcom/superdroid/sqd/SmsDeleteActivity;

    #getter for: Lcom/superdroid/sqd/SmsDeleteActivity;->_queryHandle:Lcom/superdroid/sqd/util/BackgroundQueryHandler;
    invoke-static {v6}, Lcom/superdroid/sqd/SmsDeleteActivity;->access$5(Lcom/superdroid/sqd/SmsDeleteActivity;)Lcom/superdroid/sqd/util/BackgroundQueryHandler;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/superdroid/sqd/util/SqdUtil;->markAsRead(JLcom/superdroid/sqd/util/BackgroundQueryHandler;)V

    .line 166
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 172
    iget-object v4, p0, Lcom/superdroid/sqd/SmsDeleteActivity$2;->this$0:Lcom/superdroid/sqd/SmsDeleteActivity;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    #setter for: Lcom/superdroid/sqd/SmsDeleteActivity;->_count:I
    invoke-static {v4, v5}, Lcom/superdroid/sqd/SmsDeleteActivity;->access$6(Lcom/superdroid/sqd/SmsDeleteActivity;I)V

    .line 173
    iget-object v4, p0, Lcom/superdroid/sqd/SmsDeleteActivity$2;->this$0:Lcom/superdroid/sqd/SmsDeleteActivity;

    const/4 v5, 0x1

    #calls: Lcom/superdroid/sqd/SmsDeleteActivity;->sendMessage(I)V
    invoke-static {v4, v5}, Lcom/superdroid/sqd/SmsDeleteActivity;->access$7(Lcom/superdroid/sqd/SmsDeleteActivity;I)V

    .line 175
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 179
    return-void

    .line 166
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 167
    .local v0, data:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/superdroid/sqd/data/IdType;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/superdroid/sqd/data/IdType;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    .end local v0           #data:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/superdroid/sqd/data/IdType;Ljava/lang/Boolean;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/superdroid/sqd/data/IdType;

    .line 176
    .local v1, idtype:Lcom/superdroid/sqd/data/IdType;
    iget v5, v1, Lcom/superdroid/sqd/data/IdType;->id:I

    int-to-long v5, v5

    iget-boolean v7, v1, Lcom/superdroid/sqd/data/IdType;->isSms:Z

    iget-object v8, p0, Lcom/superdroid/sqd/SmsDeleteActivity$2;->this$0:Lcom/superdroid/sqd/SmsDeleteActivity;

    #getter for: Lcom/superdroid/sqd/SmsDeleteActivity;->_queryHandle:Lcom/superdroid/sqd/util/BackgroundQueryHandler;
    invoke-static {v8}, Lcom/superdroid/sqd/SmsDeleteActivity;->access$5(Lcom/superdroid/sqd/SmsDeleteActivity;)Lcom/superdroid/sqd/util/BackgroundQueryHandler;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/superdroid/sqd/util/SqdUtil;->deleteOneSmsOrMms(JZLcom/superdroid/sqd/util/BackgroundQueryHandler;)V

    .line 177
    iget-object v5, p0, Lcom/superdroid/sqd/SmsDeleteActivity$2;->this$0:Lcom/superdroid/sqd/SmsDeleteActivity;

    #getter for: Lcom/superdroid/sqd/SmsDeleteActivity;->_mapCheckBoxStatus:Ljava/util/Map;
    invoke-static {v5}, Lcom/superdroid/sqd/SmsDeleteActivity;->access$3(Lcom/superdroid/sqd/SmsDeleteActivity;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
