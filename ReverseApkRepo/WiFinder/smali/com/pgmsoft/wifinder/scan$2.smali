.class Lcom/pgmsoft/wifinder/scan$2;
.super Ljava/lang/Object;
.source "scan.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pgmsoft/wifinder/scan;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pgmsoft/wifinder/scan;


# direct methods
.method constructor <init>(Lcom/pgmsoft/wifinder/scan;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pgmsoft/wifinder/scan$2;->this$0:Lcom/pgmsoft/wifinder/scan;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$2;->this$0:Lcom/pgmsoft/wifinder/scan;

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$2;->this$0:Lcom/pgmsoft/wifinder/scan;

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    invoke-virtual {v0}, Lcom/pgmsoft/wifinder/scan$MyCount;->cancel()V

    .line 171
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$2;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    .line 172
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$2;->this$0:Lcom/pgmsoft/wifinder/scan;

    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan$2;->this$0:Lcom/pgmsoft/wifinder/scan;

    const v2, 0x7f040007

    invoke-virtual {v1, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/scan;->niceToast(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$2;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->title_prawy:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pgmsoft/wifinder/scan;->access$26(Lcom/pgmsoft/wifinder/scan;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f040008

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$2;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/4 v1, 0x0

    #calls: Lcom/pgmsoft/wifinder/scan;->newScan(Z)V
    invoke-static {v0, v1}, Lcom/pgmsoft/wifinder/scan;->access$27(Lcom/pgmsoft/wifinder/scan;Z)V

    .line 176
    return-void
.end method
