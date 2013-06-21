.class public Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTabRestorablePackage;
.super Lcom/chillingo/crystal/ui/restorable/RestorablePackage;


# instance fields
.field private _buttonPressedRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTabRestorablePackage;->_buttonPressedRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public buttonPressedRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTabRestorablePackage;->_buttonPressedRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public setButtonPressedRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTabRestorablePackage;->_buttonPressedRect:Landroid/graphics/Rect;

    return-void
.end method
