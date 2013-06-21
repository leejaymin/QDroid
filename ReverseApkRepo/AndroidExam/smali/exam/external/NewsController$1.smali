.class Lexam/external/NewsController$1;
.super Ljava/lang/Object;
.source "NewsController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/external/NewsController;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/external/NewsController;


# direct methods
.method constructor <init>(Lexam/external/NewsController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/external/NewsController$1;->this$0:Lexam/external/NewsController;

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

    const-string v1, "exam.service.NEWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lexam/external/NewsController$1;->this$0:Lexam/external/NewsController;

    invoke-virtual {v1, v0}, Lexam/external/NewsController;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 20
    return-void
.end method
