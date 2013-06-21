.class Lexam/Network/AsyncDownHtml$2;
.super Ljava/lang/Object;
.source "AsyncDownHtml.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/Network/AsyncDownHtml;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Network/AsyncDownHtml;


# direct methods
.method constructor <init>(Lexam/Network/AsyncDownHtml;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Network/AsyncDownHtml$2;->this$0:Lexam/Network/AsyncDownHtml;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 24
    iget-object v0, p0, Lexam/Network/AsyncDownHtml$2;->this$0:Lexam/Network/AsyncDownHtml;

    iget-object v1, p0, Lexam/Network/AsyncDownHtml$2;->this$0:Lexam/Network/AsyncDownHtml;

    const-string v2, "Wait"

    const-string v3, "Downloading..."

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lexam/Network/AsyncDownHtml;->mProgress:Landroid/app/ProgressDialog;

    .line 25
    iget-object v0, p0, Lexam/Network/AsyncDownHtml$2;->this$0:Lexam/Network/AsyncDownHtml;

    new-instance v1, Lexam/Network/AsyncDownHtml$DownThread;

    iget-object v2, p0, Lexam/Network/AsyncDownHtml$2;->this$0:Lexam/Network/AsyncDownHtml;

    const-string v3, "http://www.google.com"

    invoke-direct {v1, v2, v3}, Lexam/Network/AsyncDownHtml$DownThread;-><init>(Lexam/Network/AsyncDownHtml;Ljava/lang/String;)V

    iput-object v1, v0, Lexam/Network/AsyncDownHtml;->mThread:Lexam/Network/AsyncDownHtml$DownThread;

    .line 26
    iget-object v0, p0, Lexam/Network/AsyncDownHtml$2;->this$0:Lexam/Network/AsyncDownHtml;

    iget-object v0, v0, Lexam/Network/AsyncDownHtml;->mThread:Lexam/Network/AsyncDownHtml$DownThread;

    invoke-virtual {v0}, Lexam/Network/AsyncDownHtml$DownThread;->start()V

    .line 27
    return-void
.end method
