.class public final LgF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/privacyprotection/gui/PPContactsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/privacyprotection/gui/PPContactsActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 438
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LgF;-><init>(Lcom/kms/privacyprotection/gui/PPContactsActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/privacyprotection/gui/PPContactsActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, LgF;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 447
    packed-switch p2, :pswitch_data_0

    .line 466
    :goto_0
    return-void

    .line 451
    :pswitch_0
    iget-object v0, p0, LgF;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->showDialog(I)V

    goto :goto_0

    .line 456
    :pswitch_1
    iget-object v0, p0, LgF;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->showDialog(I)V

    goto :goto_0

    .line 461
    :pswitch_2
    iget-object v0, p0, LgF;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    invoke-static {v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->c(Lcom/kms/privacyprotection/gui/PPContactsActivity;)Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v1

    iget-object v0, p0, LgF;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    invoke-static {v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->g(Lcom/kms/privacyprotection/gui/PPContactsActivity;)Ljava/util/Vector;

    move-result-object v0

    iget-object v2, p0, LgF;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    invoke-static {v2}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->f(Lcom/kms/privacyprotection/gui/PPContactsActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LeI;

    iget-object v0, v0, LeI;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kms/privacyprotection/PPItemsStorage;->removePhone(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, LgF;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    iget-object v1, p0, LgF;->a:Lcom/kms/privacyprotection/gui/PPContactsActivity;

    invoke-static {v1}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->f(Lcom/kms/privacyprotection/gui/PPContactsActivity;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->b(Lcom/kms/privacyprotection/gui/PPContactsActivity;J)V

    goto :goto_0

    .line 447
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
