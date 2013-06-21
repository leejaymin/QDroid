.class public Lui/utils/QuickAction/QuickActionItem;
.super Ljava/lang/Object;
.source "QuickActionItem.java"


# instance fields
.field mAction:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation
.end field

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lui/utils/QuickAction/QuickActionItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "icon"
    .parameter "title"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lui/utils/QuickAction/QuickActionItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 20
    iput-object p2, p0, Lui/utils/QuickAction/QuickActionItem;->mTitle:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "icon"
    .parameter "title"
    .parameter "listener"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lui/utils/QuickAction/QuickActionItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 25
    iput-object p2, p0, Lui/utils/QuickAction/QuickActionItem;->mTitle:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lui/utils/QuickAction/QuickActionItem;->mListener:Landroid/view/View$OnClickListener;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/Enum;)V
    .locals 0
    .parameter "icon"
    .parameter "title"
    .parameter "listener"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Landroid/view/View$OnClickListener;",
            "Ljava/lang/Enum",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p4, action:Ljava/lang/Enum;,"Ljava/lang/Enum<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lui/utils/QuickAction/QuickActionItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 31
    iput-object p2, p0, Lui/utils/QuickAction/QuickActionItem;->mTitle:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lui/utils/QuickAction/QuickActionItem;->mListener:Landroid/view/View$OnClickListener;

    .line 33
    iput-object p4, p0, Lui/utils/QuickAction/QuickActionItem;->mAction:Ljava/lang/Enum;

    .line 34
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lui/utils/QuickAction/QuickActionItem;->mAction:Ljava/lang/Enum;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lui/utils/QuickAction/QuickActionItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lui/utils/QuickAction/QuickActionItem;->mListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lui/utils/QuickAction/QuickActionItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/Enum;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, action:Ljava/lang/Enum;,"Ljava/lang/Enum<*>;"
    iput-object p1, p0, Lui/utils/QuickAction/QuickActionItem;->mAction:Ljava/lang/Enum;

    .line 70
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 39
    iput-object p1, p0, Lui/utils/QuickAction/QuickActionItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 40
    return-void
.end method

.method public setListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 59
    iput-object p1, p0, Lui/utils/QuickAction/QuickActionItem;->mListener:Landroid/view/View$OnClickListener;

    .line 60
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 49
    iput-object p1, p0, Lui/utils/QuickAction/QuickActionItem;->mTitle:Ljava/lang/String;

    .line 50
    return-void
.end method
