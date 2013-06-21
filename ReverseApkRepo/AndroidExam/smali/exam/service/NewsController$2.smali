.class Lexam/service/NewsController$2;
.super Ljava/lang/Object;
.source "NewsController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/service/NewsController;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/service/NewsController;


# direct methods
.method constructor <init>(Lexam/service/NewsController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/service/NewsController$2;->this$0:Lexam/service/NewsController;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lexam/service/NewsController$2;->this$0:Lexam/service/NewsController;

    const-class v2, Lexam/service/NewsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lexam/service/NewsController$2;->this$0:Lexam/service/NewsController;

    invoke-virtual {v1, v0}, Lexam/service/NewsController;->stopService(Landroid/content/Intent;)Z

    .line 28
    return-void
.end method
