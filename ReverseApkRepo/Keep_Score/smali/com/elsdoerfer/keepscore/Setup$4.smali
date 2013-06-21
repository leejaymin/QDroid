.class Lcom/elsdoerfer/keepscore/Setup$4;
.super Ljava/lang/Object;
.source "Setup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elsdoerfer/keepscore/Setup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elsdoerfer/keepscore/Setup;

.field private final synthetic val$existingSessionListCursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/elsdoerfer/keepscore/Setup;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/elsdoerfer/keepscore/Setup$4;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    iput-object p2, p0, Lcom/elsdoerfer/keepscore/Setup$4;->val$existingSessionListCursor:Landroid/database/Cursor;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 193
    iget-object v2, p0, Lcom/elsdoerfer/keepscore/Setup$4;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    invoke-virtual {v2}, Lcom/elsdoerfer/keepscore/Setup;->addPlayerOrStartButtonIsStartMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/elsdoerfer/keepscore/Setup$4;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    #calls: Lcom/elsdoerfer/keepscore/Setup;->newPlayerNameSubmit()V
    invoke-static {v2}, Lcom/elsdoerfer/keepscore/Setup;->access$0(Lcom/elsdoerfer/keepscore/Setup;)V

    .line 210
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/elsdoerfer/keepscore/Setup$4;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    iget-object v3, v2, Lcom/elsdoerfer/keepscore/Setup;->mDb:Lcom/elsdoerfer/keepscore/DbAdapter;

    iget-object v2, p0, Lcom/elsdoerfer/keepscore/Setup$4;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    iget-object v2, v2, Lcom/elsdoerfer/keepscore/Setup;->mListOfPlayersArray:Ljava/util/ArrayList;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/elsdoerfer/keepscore/DbAdapter;->createSession([Ljava/lang/String;)J

    move-result-wide v0

    .line 200
    .local v0, newId:J
    iget-object v2, p0, Lcom/elsdoerfer/keepscore/Setup$4;->val$existingSessionListCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    .line 201
    iget-object v2, p0, Lcom/elsdoerfer/keepscore/Setup$4;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    invoke-virtual {v2, v0, v1}, Lcom/elsdoerfer/keepscore/Setup;->continueSession(J)V

    .line 206
    iget-object v2, p0, Lcom/elsdoerfer/keepscore/Setup$4;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    iget-object v2, v2, Lcom/elsdoerfer/keepscore/Setup;->mNewPlayerNameText:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v2, p0, Lcom/elsdoerfer/keepscore/Setup$4;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    iget-object v2, v2, Lcom/elsdoerfer/keepscore/Setup;->mListOfPlayersAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    .line 208
    iget-object v2, p0, Lcom/elsdoerfer/keepscore/Setup$4;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    invoke-virtual {v2}, Lcom/elsdoerfer/keepscore/Setup;->updateUI()V

    goto :goto_0
.end method
