.class public Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final USER_FOLDER:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mPath:Ljava/lang/String;

.field public mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;->mType:I

    .line 24
    iput-object p2, p0, Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;->mPath:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 29
    instance-of v0, p1, Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;

    if-eqz v0, :cond_0

    .line 30
    check-cast p1, Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;

    .line 31
    iget-object v0, p0, Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;->mPath:Ljava/lang/String;

    iget-object v1, p1, Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;->mType:I

    iget v1, p1, Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;->mType:I

    if-ne v0, v1, :cond_0

    .line 32
    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;->mPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
