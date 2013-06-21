.class Lcom/madvil/core/LibraryAdapter$ItemHolder;
.super Ljava/lang/Object;
.source "LibraryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/madvil/core/LibraryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemHolder"
.end annotation


# instance fields
.field public bitrate:Landroid/widget/TextView;

.field public fileName:Landroid/widget/TextView;

.field public size:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/madvil/core/LibraryAdapter;


# direct methods
.method private constructor <init>(Lcom/madvil/core/LibraryAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/madvil/core/LibraryAdapter$ItemHolder;->this$0:Lcom/madvil/core/LibraryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/madvil/core/LibraryAdapter;Lcom/madvil/core/LibraryAdapter$ItemHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/madvil/core/LibraryAdapter$ItemHolder;-><init>(Lcom/madvil/core/LibraryAdapter;)V

    return-void
.end method
