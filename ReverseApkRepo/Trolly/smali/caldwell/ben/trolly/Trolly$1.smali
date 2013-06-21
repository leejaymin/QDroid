.class Lcaldwell/ben/trolly/Trolly$1;
.super Ljava/lang/Object;
.source "Trolly.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcaldwell/ben/trolly/Trolly;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcaldwell/ben/trolly/Trolly$1;->this$0:Lcaldwell/ben/trolly/Trolly;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 253
    sget-boolean v0, Lcaldwell/ben/trolly/Trolly;->adding:Z

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x0

    sput-boolean v0, Lcaldwell/ben/trolly/Trolly;->adding:Z

    .line 255
    iget-object v0, p0, Lcaldwell/ben/trolly/Trolly$1;->this$0:Lcaldwell/ben/trolly/Trolly;

    invoke-virtual {v0}, Lcaldwell/ben/trolly/Trolly;->updateList()V

    .line 257
    :cond_0
    return-void
.end method
