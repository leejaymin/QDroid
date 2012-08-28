.class Lorg/connectbot/util/UberColorPickerDialog$1;
.super Ljava/lang/Object;
.source "UberColorPickerDialog.java"

# interfaces
.implements Lorg/connectbot/util/UberColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/util/UberColorPickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/util/UberColorPickerDialog;


# direct methods
.method constructor <init>(Lorg/connectbot/util/UberColorPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/util/UberColorPickerDialog$1;->this$0:Lorg/connectbot/util/UberColorPickerDialog;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 102
    iget-object v0, p0, Lorg/connectbot/util/UberColorPickerDialog$1;->this$0:Lorg/connectbot/util/UberColorPickerDialog;

    #getter for: Lorg/connectbot/util/UberColorPickerDialog;->mListener:Lorg/connectbot/util/UberColorPickerDialog$OnColorChangedListener;
    invoke-static {v0}, Lorg/connectbot/util/UberColorPickerDialog;->access$0(Lorg/connectbot/util/UberColorPickerDialog;)Lorg/connectbot/util/UberColorPickerDialog$OnColorChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/connectbot/util/UberColorPickerDialog$OnColorChangedListener;->colorChanged(I)V

    .line 103
    iget-object v0, p0, Lorg/connectbot/util/UberColorPickerDialog$1;->this$0:Lorg/connectbot/util/UberColorPickerDialog;

    invoke-virtual {v0}, Lorg/connectbot/util/UberColorPickerDialog;->dismiss()V

    .line 104
    return-void
.end method
