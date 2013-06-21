.class Lexam/Network/DownHtml$1;
.super Ljava/lang/Object;
.source "DownHtml.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/Network/DownHtml;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Network/DownHtml;


# direct methods
.method constructor <init>(Lexam/Network/DownHtml;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Network/DownHtml$1;->this$0:Lexam/Network/DownHtml;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 25
    iget-object v2, p0, Lexam/Network/DownHtml$1;->this$0:Lexam/Network/DownHtml;

    const-string v3, "http://www.google.com"

    invoke-virtual {v2, v3}, Lexam/Network/DownHtml;->DownloadHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, html:Ljava/lang/String;
    iget-object v2, p0, Lexam/Network/DownHtml$1;->this$0:Lexam/Network/DownHtml;

    const v3, 0x7f0c0050

    invoke-virtual {v2, v3}, Lexam/Network/DownHtml;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 27
    .local v1, result:Landroid/widget/EditText;
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 28
    return-void
.end method
