.class Lkr/co/medinbiz/widget/sos/SosMenu$MyOnClickListener;
.super Ljava/lang/Object;
.source "SosMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/sos/SosMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/sos/SosMenu;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/sos/SosMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lkr/co/medinbiz/widget/sos/SosMenu$MyOnClickListener;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 292
    iget-object v0, p0, Lkr/co/medinbiz/widget/sos/SosMenu$MyOnClickListener;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;

    #calls: Lkr/co/medinbiz/widget/sos/SosMenu;->gpsInit()V
    invoke-static {v0}, Lkr/co/medinbiz/widget/sos/SosMenu;->access$1(Lkr/co/medinbiz/widget/sos/SosMenu;)V

    .line 293
    iget-object v0, p0, Lkr/co/medinbiz/widget/sos/SosMenu$MyOnClickListener;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;

    #getter for: Lkr/co/medinbiz/widget/sos/SosMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v0}, Lkr/co/medinbiz/widget/sos/SosMenu;->access$2(Lkr/co/medinbiz/widget/sos/SosMenu;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lkr/co/medinbiz/helper/PreferencesManager;->setGPSused(Z)V

    .line 294
    return-void
.end method
