.class Lcom/elsdoerfer/keepscore/Setup$8;
.super Ljava/lang/Object;
.source "Setup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elsdoerfer/keepscore/Setup;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elsdoerfer/keepscore/Setup;


# direct methods
.method constructor <init>(Lcom/elsdoerfer/keepscore/Setup;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/elsdoerfer/keepscore/Setup$8;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup$8;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    iget-object v0, v0, Lcom/elsdoerfer/keepscore/Setup;->mDb:Lcom/elsdoerfer/keepscore/DbAdapter;

    invoke-virtual {v0}, Lcom/elsdoerfer/keepscore/DbAdapter;->clearSessions()V

    .line 295
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup$8;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    iget-object v0, v0, Lcom/elsdoerfer/keepscore/Setup;->mExistingSessionsAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 296
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup$8;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    invoke-virtual {v0}, Lcom/elsdoerfer/keepscore/Setup;->updateUI()V

    .line 297
    return-void
.end method
