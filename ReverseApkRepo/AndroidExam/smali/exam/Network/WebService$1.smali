.class Lexam/Network/WebService$1;
.super Ljava/lang/Object;
.source "WebService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/Network/WebService;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Network/WebService;


# direct methods
.method constructor <init>(Lexam/Network/WebService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Network/WebService$1;->this$0:Lexam/Network/WebService;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 22
    const-string v1, "jennifer"

    .line 23
    .local v1, name:Ljava/lang/String;
    const/4 v0, 0x2

    .line 24
    .local v0, count:I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://twitter.com/statuses/user_timeline.xml?screen_name="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 24
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 26
    .local v3, url:Ljava/lang/String;
    iget-object v5, p0, Lexam/Network/WebService$1;->this$0:Lexam/Network/WebService;

    invoke-virtual {v5, v3}, Lexam/Network/WebService;->DownloadHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 27
    .local v4, xml:Ljava/lang/String;
    iget-object v5, p0, Lexam/Network/WebService$1;->this$0:Lexam/Network/WebService;

    const v6, 0x7f0c0050

    invoke-virtual {v5, v6}, Lexam/Network/WebService;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 28
    .local v2, result:Landroid/widget/EditText;
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 29
    return-void
.end method
