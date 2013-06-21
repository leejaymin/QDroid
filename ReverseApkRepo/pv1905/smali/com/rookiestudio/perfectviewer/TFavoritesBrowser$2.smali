.class Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$2;
.super Ljava/lang/Object;
.source "TFavoritesBrowser.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->onBookmarkMenu(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;

.field private final synthetic val$ItemIndex:I

.field private final synthetic val$MenuDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;Landroid/app/AlertDialog;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$2;->this$0:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;

    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$2;->val$MenuDialog:Landroid/app/AlertDialog;

    iput p3, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$2;->val$ItemIndex:I

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$2;->val$MenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 138
    packed-switch p3, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 140
    :pswitch_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$2;->this$0:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$2;->this$0:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->FavoritesList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->access$2(Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;)Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;

    move-result-object v1

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$2;->val$ItemIndex:I

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->getItemId(I)J

    move-result-wide v1

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$2;->this$0:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->FavoritesList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;
    invoke-static {v3}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->access$2(Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;)Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;

    move-result-object v3

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$2;->val$ItemIndex:I

    invoke-virtual {v3, v4}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->getItem(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->EditFavorites(JLjava/lang/String;)V

    goto :goto_0

    .line 143
    :pswitch_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$2;->this$0:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$2;->this$0:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->FavoritesList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->access$2(Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;)Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;

    move-result-object v1

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$2;->val$ItemIndex:I

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->DeleteFavorites(J)V

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
