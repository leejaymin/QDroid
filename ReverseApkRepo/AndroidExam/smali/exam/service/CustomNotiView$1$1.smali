.class Lexam/service/CustomNotiView$1$1;
.super Ljava/lang/Object;
.source "CustomNotiView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/service/CustomNotiView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lexam/service/CustomNotiView$1;


# direct methods
.method constructor <init>(Lexam/service/CustomNotiView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/service/CustomNotiView$1$1;->this$1:Lexam/service/CustomNotiView$1;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 26
    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f020016

    .line 27
    const-string v5, "\uc77c\uc5b4\ub098\uc138\uc694"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 26
    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 28
    .local v3, noti:Landroid/app/Notification;
    iget v4, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/app/Notification;->defaults:I

    .line 29
    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 31
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lexam/service/CustomNotiView$1$1;->this$1:Lexam/service/CustomNotiView$1;

    #getter for: Lexam/service/CustomNotiView$1;->this$0:Lexam/service/CustomNotiView;
    invoke-static {v4}, Lexam/service/CustomNotiView$1;->access$0(Lexam/service/CustomNotiView$1;)Lexam/service/CustomNotiView;

    move-result-object v4

    const-class v5, Lexam/service/NapEnd;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 34
    iget-object v4, p0, Lexam/service/CustomNotiView$1$1;->this$1:Lexam/service/CustomNotiView$1;

    #getter for: Lexam/service/CustomNotiView$1;->this$0:Lexam/service/CustomNotiView;
    invoke-static {v4}, Lexam/service/CustomNotiView$1;->access$0(Lexam/service/CustomNotiView$1;)Lexam/service/CustomNotiView;

    move-result-object v4

    .line 33
    invoke-static {v4, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 36
    .local v0, content:Landroid/app/PendingIntent;
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lexam/service/CustomNotiView$1$1;->this$1:Lexam/service/CustomNotiView$1;

    #getter for: Lexam/service/CustomNotiView$1;->this$0:Lexam/service/CustomNotiView;
    invoke-static {v4}, Lexam/service/CustomNotiView$1;->access$0(Lexam/service/CustomNotiView$1;)Lexam/service/CustomNotiView;

    move-result-object v4

    invoke-virtual {v4}, Lexam/service/CustomNotiView;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030051

    invoke-direct {v2, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 37
    .local v2, napView:Landroid/widget/RemoteViews;
    iput-object v2, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 38
    iput-object v0, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 41
    iget-object v4, p0, Lexam/service/CustomNotiView$1$1;->this$1:Lexam/service/CustomNotiView$1;

    #getter for: Lexam/service/CustomNotiView$1;->this$0:Lexam/service/CustomNotiView;
    invoke-static {v4}, Lexam/service/CustomNotiView$1;->access$0(Lexam/service/CustomNotiView$1;)Lexam/service/CustomNotiView;

    move-result-object v4

    iget-object v4, v4, Lexam/service/CustomNotiView;->mNotiManager:Landroid/app/NotificationManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 42
    return-void
.end method
