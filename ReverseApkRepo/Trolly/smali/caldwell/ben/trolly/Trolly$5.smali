.class Lcaldwell/ben/trolly/Trolly$5;
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
    iput-object p1, p0, Lcaldwell/ben/trolly/Trolly$5;->this$0:Lcaldwell/ben/trolly/Trolly;

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x0

    .line 527
    iget-object v0, p0, Lcaldwell/ben/trolly/Trolly$5;->this$0:Lcaldwell/ben/trolly/Trolly;

    invoke-virtual {v0}, Lcaldwell/ben/trolly/Trolly;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcaldwell/ben/trolly/Trolly$5;->this$0:Lcaldwell/ben/trolly/Trolly;

    #getter for: Lcaldwell/ben/trolly/Trolly;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcaldwell/ben/trolly/Trolly;->access$3(Lcaldwell/ben/trolly/Trolly;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 528
    return-void
.end method
