.class public final LdH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/widget/ScrollView;

.field private synthetic b:I


# direct methods
.method public constructor <init>(Lcom/kms/gui/KMSMain;Landroid/widget/ScrollView;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p2, p0, LdH;->a:Landroid/widget/ScrollView;

    iput p3, p0, LdH;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, LdH;->a:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    iget v2, p0, LdH;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 231
    return-void
.end method
