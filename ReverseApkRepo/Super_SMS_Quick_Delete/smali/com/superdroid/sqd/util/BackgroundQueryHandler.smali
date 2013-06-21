.class public Lcom/superdroid/sqd/util/BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "BackgroundQueryHandler.java"


# static fields
.field public static final DELETE_SMS_TOKEN:I = 0x1

.field public static final DELETE_THREAD_TOKEN:I = 0x2


# instance fields
.field private _messenger:Lcom/superdroid/sqd/view/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/superdroid/sqd/view/Messenger;)V
    .locals 0
    .parameter "contentResolver"
    .parameter "messenger"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 16
    iput-object p2, p0, Lcom/superdroid/sqd/util/BackgroundQueryHandler;->_messenger:Lcom/superdroid/sqd/view/Messenger;

    .line 17
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 21
    packed-switch p1, :pswitch_data_0

    .line 25
    :goto_0
    iget-object v0, p0, Lcom/superdroid/sqd/util/BackgroundQueryHandler;->_messenger:Lcom/superdroid/sqd/view/Messenger;

    invoke-interface {v0}, Lcom/superdroid/sqd/view/Messenger;->sendMessage()V

    .line 28
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onDeleteComplete(ILjava/lang/Object;I)V

    .line 29
    return-void

    .line 23
    :pswitch_0
    sget-object v0, Lcom/superdroid/logger/LoggerFactory;->logger:Lcom/superdroid/logger/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "delete one sms finish"

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/superdroid/logger/Logger;->error(Ljava/lang/Class;[Ljava/lang/Object;)V

    goto :goto_0

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
