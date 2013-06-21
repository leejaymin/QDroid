.class public Ldk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 62
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 67
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p6

    move v8, v5

    invoke-direct/range {v0 .. v8}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p2, p0, Ldk;->a:I

    .line 77
    iput-object p3, p0, Ldk;->b:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Ldk;->c:Ljava/lang/String;

    .line 79
    iput-boolean p5, p0, Ldk;->d:Z

    .line 80
    iput-boolean p6, p0, Ldk;->f:Z

    .line 81
    iget v0, p0, Ldk;->a:I

    if-ne v0, v1, :cond_0

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldk;->e:Z

    .line 89
    :goto_0
    iput-object p7, p0, Ldk;->g:Ljava/lang/String;

    .line 90
    iput-boolean p8, p0, Ldk;->h:Z

    .line 91
    iput p9, p0, Ldk;->i:I

    .line 92
    iput p10, p0, Ldk;->j:I

    .line 93
    return-void

    .line 87
    :cond_0
    iput-boolean v1, p0, Ldk;->e:Z

    goto :goto_0
.end method
