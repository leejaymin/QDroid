.class public final Ldo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/KMSCommonUserActionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/gui/KMSCommonUserActionActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldo;-><init>(Lcom/kms/gui/KMSCommonUserActionActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/gui/KMSCommonUserActionActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Ldo;->a:Lcom/kms/gui/KMSCommonUserActionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 114
    iget-object v1, p0, Ldo;->a:Lcom/kms/gui/KMSCommonUserActionActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kms/gui/KMSCommonUserActionActivity;->a(I)V

    .line 115
    return-void
.end method
