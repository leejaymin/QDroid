.class Lcom/madvil/ms/MusicToPhoneActivity$11$1;
.super Ljava/lang/Object;
.source "MusicToPhoneActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madvil/ms/MusicToPhoneActivity$11;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/madvil/ms/MusicToPhoneActivity$11;


# direct methods
.method constructor <init>(Lcom/madvil/ms/MusicToPhoneActivity$11;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity$11$1;->this$1:Lcom/madvil/ms/MusicToPhoneActivity$11;

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 432
    packed-switch p2, :pswitch_data_0

    .line 437
    .end local p0
    :goto_0
    return-void

    .line 433
    .restart local p0
    :pswitch_0
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$11$1;->this$1:Lcom/madvil/ms/MusicToPhoneActivity$11;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity$11;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;
    invoke-static {v0}, Lcom/madvil/ms/MusicToPhoneActivity$11;->access$0(Lcom/madvil/ms/MusicToPhoneActivity$11;)Lcom/madvil/ms/MusicToPhoneActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$11$1;->this$1:Lcom/madvil/ms/MusicToPhoneActivity$11;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity$11;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity$11;->access$0(Lcom/madvil/ms/MusicToPhoneActivity$11;)Lcom/madvil/ms/MusicToPhoneActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/madvil/ms/MusicToPhoneActivity;->libraryAdapter:Lcom/madvil/core/LibraryAdapter;

    iget-object v2, p0, Lcom/madvil/ms/MusicToPhoneActivity$11$1;->this$1:Lcom/madvil/ms/MusicToPhoneActivity$11;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity$11;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;
    invoke-static {v2}, Lcom/madvil/ms/MusicToPhoneActivity$11;->access$0(Lcom/madvil/ms/MusicToPhoneActivity$11;)Lcom/madvil/ms/MusicToPhoneActivity;

    move-result-object v2

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->libItemChecked:I
    invoke-static {v2}, Lcom/madvil/ms/MusicToPhoneActivity;->access$6(Lcom/madvil/ms/MusicToPhoneActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/madvil/core/LibraryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/madvil/core/SimpleSong;

    invoke-virtual {v0, p0}, Lcom/madvil/ms/MusicToPhoneActivity;->openSongInPlayer(Lcom/madvil/core/SimpleSong;)V

    goto :goto_0

    .line 434
    .restart local p0
    :pswitch_1
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$11$1;->this$1:Lcom/madvil/ms/MusicToPhoneActivity$11;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity$11;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;
    invoke-static {v0}, Lcom/madvil/ms/MusicToPhoneActivity$11;->access$0(Lcom/madvil/ms/MusicToPhoneActivity$11;)Lcom/madvil/ms/MusicToPhoneActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$11$1;->this$1:Lcom/madvil/ms/MusicToPhoneActivity$11;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity$11;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity$11;->access$0(Lcom/madvil/ms/MusicToPhoneActivity$11;)Lcom/madvil/ms/MusicToPhoneActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/madvil/ms/MusicToPhoneActivity;->libraryAdapter:Lcom/madvil/core/LibraryAdapter;

    iget-object v2, p0, Lcom/madvil/ms/MusicToPhoneActivity$11$1;->this$1:Lcom/madvil/ms/MusicToPhoneActivity$11;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity$11;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;
    invoke-static {v2}, Lcom/madvil/ms/MusicToPhoneActivity$11;->access$0(Lcom/madvil/ms/MusicToPhoneActivity$11;)Lcom/madvil/ms/MusicToPhoneActivity;

    move-result-object v2

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->libItemChecked:I
    invoke-static {v2}, Lcom/madvil/ms/MusicToPhoneActivity;->access$6(Lcom/madvil/ms/MusicToPhoneActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/madvil/core/LibraryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/madvil/core/SimpleSong;

    invoke-virtual {v0, p0}, Lcom/madvil/ms/MusicToPhoneActivity;->setUsRingtone(Lcom/madvil/core/SimpleSong;)V

    goto :goto_0

    .line 435
    .restart local p0
    :pswitch_2
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$11$1;->this$1:Lcom/madvil/ms/MusicToPhoneActivity$11;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity$11;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;
    invoke-static {v0}, Lcom/madvil/ms/MusicToPhoneActivity$11;->access$0(Lcom/madvil/ms/MusicToPhoneActivity$11;)Lcom/madvil/ms/MusicToPhoneActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$11$1;->this$1:Lcom/madvil/ms/MusicToPhoneActivity$11;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity$11;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity$11;->access$0(Lcom/madvil/ms/MusicToPhoneActivity$11;)Lcom/madvil/ms/MusicToPhoneActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/madvil/ms/MusicToPhoneActivity;->libraryAdapter:Lcom/madvil/core/LibraryAdapter;

    iget-object v2, p0, Lcom/madvil/ms/MusicToPhoneActivity$11$1;->this$1:Lcom/madvil/ms/MusicToPhoneActivity$11;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity$11;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;
    invoke-static {v2}, Lcom/madvil/ms/MusicToPhoneActivity$11;->access$0(Lcom/madvil/ms/MusicToPhoneActivity$11;)Lcom/madvil/ms/MusicToPhoneActivity;

    move-result-object v2

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->libItemChecked:I
    invoke-static {v2}, Lcom/madvil/ms/MusicToPhoneActivity;->access$6(Lcom/madvil/ms/MusicToPhoneActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/madvil/core/LibraryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/madvil/core/SimpleSong;

    invoke-virtual {v0, p0}, Lcom/madvil/ms/MusicToPhoneActivity;->removeFromLibrary(Lcom/madvil/core/SimpleSong;)V

    goto :goto_0

    .line 432
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
