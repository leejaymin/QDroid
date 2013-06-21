.class public final Lbs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antispam/gui/AntiSpamListActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/gui/AntiSpamListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lbs;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 247
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    iget-object v1, p0, Lbs;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    invoke-static {v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(Lcom/kms/antispam/gui/AntiSpamListActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kms/antispam/AntiSpamStorage;->deleteAll(I)I

    .line 248
    iget-object v0, p0, Lbs;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->c(Lcom/kms/antispam/gui/AntiSpamListActivity;)V

    .line 249
    iget-object v0, p0, Lbs;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(Lcom/kms/antispam/AntiSpamItem;)V

    .line 250
    return-void
.end method
