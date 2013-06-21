.class Lcom/cocmoc/kulinglite/Preferences$8;
.super Ljava/lang/Object;
.source "Preferences.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cocmoc/kulinglite/Preferences;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cocmoc/kulinglite/Preferences;


# direct methods
.method constructor <init>(Lcom/cocmoc/kulinglite/Preferences;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cocmoc/kulinglite/Preferences$8;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const-string v3, "Kuling"

    .line 296
    const-string v0, "Kuling"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Preferences: TEXTCOLOR_DIALOG_ID Button:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    if-nez p2, :cond_0

    .line 300
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Preferences$8;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    const-string v1, "Light"

    #setter for: Lcom/cocmoc/kulinglite/Preferences;->tema:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cocmoc/kulinglite/Preferences;->access$15(Lcom/cocmoc/kulinglite/Preferences;Ljava/lang/String;)V

    .line 302
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Preferences$8;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    const-string v1, "Dark"

    #setter for: Lcom/cocmoc/kulinglite/Preferences;->tema:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cocmoc/kulinglite/Preferences;->access$15(Lcom/cocmoc/kulinglite/Preferences;Ljava/lang/String;)V

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Preferences$8;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Preferences;->textColorTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cocmoc/kulinglite/Preferences$8;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    #getter for: Lcom/cocmoc/kulinglite/Preferences;->temaTag:Ljava/lang/String;
    invoke-static {v2}, Lcom/cocmoc/kulinglite/Preferences;->access$16(Lcom/cocmoc/kulinglite/Preferences;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cocmoc/kulinglite/Preferences$8;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    #getter for: Lcom/cocmoc/kulinglite/Preferences;->tema:Ljava/lang/String;
    invoke-static {v2}, Lcom/cocmoc/kulinglite/Preferences;->access$7(Lcom/cocmoc/kulinglite/Preferences;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    const-string v0, "Kuling"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Preferences: TEXTCOLOR_DIALOG"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cocmoc/kulinglite/Preferences$8;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    #getter for: Lcom/cocmoc/kulinglite/Preferences;->tema:Ljava/lang/String;
    invoke-static {v1}, Lcom/cocmoc/kulinglite/Preferences;->access$7(Lcom/cocmoc/kulinglite/Preferences;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void
.end method
