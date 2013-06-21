.class final Lorg/appcelerator/titanium/util/TiJSErrorDialog$2;
.super Ljava/lang/Object;
.source "TiJSErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/util/TiJSErrorDialog;->createDialog(Ljava/util/concurrent/Semaphore;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiJSErrorDialog$2;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 117
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 119
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    .line 122
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiJSErrorDialog$2;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0
.end method
