.class Lorg/tf/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/tf/SettingsActivity;->doPageAction(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/tf/SettingsActivity;


# direct methods
.method constructor <init>(Lorg/tf/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/tf/SettingsActivity$1;->this$0:Lorg/tf/SettingsActivity;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 130
    iget-object v0, p0, Lorg/tf/SettingsActivity$1;->this$0:Lorg/tf/SettingsActivity;

    #calls: Lorg/tf/SettingsActivity;->resetValues()V
    invoke-static {v0}, Lorg/tf/SettingsActivity;->access$0(Lorg/tf/SettingsActivity;)V

    .line 131
    return-void
.end method
