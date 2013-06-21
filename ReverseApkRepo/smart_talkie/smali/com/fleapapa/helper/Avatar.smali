.class public Lcom/fleapapa/helper/Avatar;
.super Landroid/app/Activity;
.source "Avatar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fleapapa/helper/Avatar$AvatarAdapter;
    }
.end annotation


# static fields
.field public static avatars:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fleapapa/helper/Avatar;->avatars:[I

    .line 17
    return-void

    .line 18
    :array_0
    .array-data 0x4
        0x66t 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x2t 0x7ft
        0x1t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0x2t 0x0t 0x2t 0x7ft
        0x3t 0x0t 0x2t 0x7ft
        0x4t 0x0t 0x2t 0x7ft
        0x5t 0x0t 0x2t 0x7ft
        0x6t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0x8t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static avatar(I)I
    .locals 2
    .parameter "i"

    .prologue
    .line 69
    sget-object v0, Lcom/fleapapa/helper/Avatar;->avatars:[I

    if-ltz p0, :cond_0

    sget-object v1, Lcom/fleapapa/helper/Avatar;->avatars:[I

    array-length v1, v1

    if-ge p0, v1, :cond_0

    move v1, p0

    :goto_0
    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    new-instance v1, Landroid/widget/GridView;

    invoke-direct {v1, p0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 48
    .local v1, gview:Landroid/widget/GridView;
    new-instance v0, Lcom/fleapapa/helper/Avatar$AvatarAdapter;

    invoke-direct {v0, p0}, Lcom/fleapapa/helper/Avatar$AvatarAdapter;-><init>(Lcom/fleapapa/helper/Avatar;)V

    .line 49
    .local v0, adapter:Lcom/fleapapa/helper/Avatar$AvatarAdapter;,"Lcom/fleapapa/helper/Avatar$AvatarAdapter<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/Avatar;->setContentView(Landroid/view/View;)V

    .line 50
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 53
    const v3, 0x7f02006f

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setBackgroundResource(I)V

    .line 54
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    sget-object v3, Lcom/fleapapa/helper/Avatar;->avatars:[I

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 56
    new-instance v3, Lcom/fleapapa/helper/Avatar$1;

    invoke-direct {v3, p0, v0}, Lcom/fleapapa/helper/Avatar$1;-><init>(Lcom/fleapapa/helper/Avatar;Lcom/fleapapa/helper/Avatar$AvatarAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    return-void

    .line 55
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fleapapa/helper/Avatar$AvatarAdapter;->add(Ljava/lang/Object;)V

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
