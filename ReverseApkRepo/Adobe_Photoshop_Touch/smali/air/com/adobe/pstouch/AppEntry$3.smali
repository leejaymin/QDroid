.class Lair/com/adobe/pstouch/AppEntry$3;
.super Ljava/lang/Object;
.source "AppEntry.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lair/com/adobe/pstouch/AppEntry;->showDialog(ILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lair/com/adobe/pstouch/AppEntry;


# direct methods
.method constructor <init>(Lair/com/adobe/pstouch/AppEntry;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lair/com/adobe/pstouch/AppEntry$3;->this$0:Lair/com/adobe/pstouch/AppEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 176
    return-void
.end method