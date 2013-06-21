.class Lcaldwell/ben/trolly/Trolly$7;
.super Ljava/lang/Object;
.source "Trolly.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcaldwell/ben/trolly/Trolly;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcaldwell/ben/trolly/Trolly;


# direct methods
.method constructor <init>(Lcaldwell/ben/trolly/Trolly;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcaldwell/ben/trolly/Trolly$7;->this$0:Lcaldwell/ben/trolly/Trolly;

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x0

    .line 544
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 546
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "status"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 547
    iget-object v1, p0, Lcaldwell/ben/trolly/Trolly$7;->this$0:Lcaldwell/ben/trolly/Trolly;

    invoke-virtual {v1}, Lcaldwell/ben/trolly/Trolly;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcaldwell/ben/trolly/Trolly$7;->this$0:Lcaldwell/ben/trolly/Trolly;

    invoke-virtual {v2}, Lcaldwell/ben/trolly/Trolly;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 548
    return-void
.end method
