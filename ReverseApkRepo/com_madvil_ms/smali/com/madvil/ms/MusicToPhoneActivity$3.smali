.class Lcom/madvil/ms/MusicToPhoneActivity$3;
.super Ljava/lang/Object;
.source "MusicToPhoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madvil/ms/MusicToPhoneActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/madvil/ms/MusicToPhoneActivity;


# direct methods
.method constructor <init>(Lcom/madvil/ms/MusicToPhoneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity$3;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$3;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->currentTab:I
    invoke-static {v0}, Lcom/madvil/ms/MusicToPhoneActivity;->access$0(Lcom/madvil/ms/MusicToPhoneActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$3;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/madvil/ms/MusicToPhoneActivity;->changeTab(I)V

    .line 245
    :cond_0
    return-void
.end method
