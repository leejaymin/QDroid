.class Lexam/service/DetectFree$1;
.super Ljava/lang/Object;
.source "DetectFree.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/service/DetectFree;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/service/DetectFree;


# direct methods
.method constructor <init>(Lexam/service/DetectFree;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/service/DetectFree$1;->this$0:Lexam/service/DetectFree;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 18
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 19
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "exam.service.FREEWIFI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    iget-object v1, p0, Lexam/service/DetectFree$1;->this$0:Lexam/service/DetectFree;

    invoke-virtual {v1, v0}, Lexam/service/DetectFree;->sendBroadcast(Landroid/content/Intent;)V

    .line 21
    return-void
.end method
