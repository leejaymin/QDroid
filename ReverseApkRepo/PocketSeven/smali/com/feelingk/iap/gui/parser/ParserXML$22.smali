.class Lcom/feelingk/iap/gui/parser/ParserXML$22;
.super Ljava/lang/Object;
.source "ParserXML.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/gui/parser/ParserXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/parser/ParserXML;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$22;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 3971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, 0x1

    .line 3976
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$25()Landroid/widget/Button;

    move-result-object v5

    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$26()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3979
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$27(Ljava/lang/Boolean;)V

    .line 3990
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$28()Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;->onGetLguSmsAuthTime()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3992
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3993
    .local v1, now:J
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMddHHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3996
    .local v4, sdfNow:Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 3997
    .local v0, currTime:Ljava/lang/String;
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$28()Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;->onGetLguSmsAuthTime()Ljava/lang/String;

    move-result-object v3

    .line 3998
    .local v3, oldTime:Ljava/lang/String;
    const-string v5, "ParserXML"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "currTime: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3999
    const-string v5, "ParserXML"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "oldTime: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4002
    invoke-static {v3, v0}, Lcom/feelingk/iap/util/CommonF;->getTimeDifference(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0xb4

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 4003
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$28()Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;->onErrorPopup()V

    .line 4004
    const-string v5, "ParserXML"

    const-string v6, "LguSmsAuthNumberReq Fail"

    invoke-static {v5, v6}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4049
    .end local v0           #currTime:Ljava/lang/String;
    .end local v1           #now:J
    .end local v3           #oldTime:Ljava/lang/String;
    .end local v4           #sdfNow:Ljava/text/SimpleDateFormat;
    :goto_0
    return-void

    .line 4009
    .restart local v0       #currTime:Ljava/lang/String;
    .restart local v1       #now:J
    .restart local v3       #oldTime:Ljava/lang/String;
    .restart local v4       #sdfNow:Ljava/text/SimpleDateFormat;
    :cond_0
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$28()Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;->onLguSmsAuthNumberReq()V

    .line 4010
    const-string v5, "ParserXML"

    const-string v6, "LguSmsAuthNumberReq Flow1 Start "

    invoke-static {v5, v6}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4012
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$28()Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    move-result-object v5

    invoke-interface {v5, v9}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;->onSetLguSmsAuthTime(Z)V

    goto :goto_0

    .line 4019
    .end local v0           #currTime:Ljava/lang/String;
    .end local v1           #now:J
    .end local v3           #oldTime:Ljava/lang/String;
    .end local v4           #sdfNow:Ljava/text/SimpleDateFormat;
    :cond_1
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$28()Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;->onLguSmsAuthNumberReq()V

    .line 4020
    const-string v5, "ParserXML"

    const-string v6, "LguSmsAuthNumberReq Flow2 Start "

    invoke-static {v5, v6}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4022
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$28()Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    move-result-object v5

    invoke-interface {v5, v9}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;->onSetLguSmsAuthTime(Z)V

    goto :goto_0
.end method
