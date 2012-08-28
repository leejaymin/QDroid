.class final Lorg/connectbot/HostList$1$1;
.super Ljava/lang/Object;
.source "HostList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/HostList$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/connectbot/HostList$1;

.field private final synthetic val$target:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/connectbot/HostList$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/HostList$1$1;->this$1:Lorg/connectbot/HostList$1;

    iput-object p2, p0, Lorg/connectbot/HostList$1$1;->val$target:Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lorg/connectbot/HostList$1$1;->val$target:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 81
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lorg/connectbot/HostList$1$1;->this$1:Lorg/connectbot/HostList$1;

    #getter for: Lorg/connectbot/HostList$1;->this$0:Lorg/connectbot/HostList;
    invoke-static {v1}, Lorg/connectbot/HostList$1;->access$0(Lorg/connectbot/HostList$1;)Lorg/connectbot/HostList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/connectbot/HostList;->startActivity(Landroid/content/Intent;)V

    .line 82
    return-void
.end method
