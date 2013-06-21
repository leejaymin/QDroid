.class public Lcom/kms/antispam/AntiSpamItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BLACK_ITEM:I = 0x1

.field public static final MAX_TEXT_LENGTH:I = 0x8c

.field public static final PHONE_NUMBER_MASK:I = 0x1

.field public static final SMS:I = 0x2

.field public static final TEXT_MASK:I = 0x2

.field public static final VOICE:I = 0x1

.field public static final WHITE_ITEM:I = 0x2

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mCellEventTypes:I

.field public mCellValidFields:I

.field public mItemType:I

.field public mPhoneNumberMask:Ljava/lang/String;

.field public mTextMask:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/kms/antispam/AntiSpamItem;->mItemType:I

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/kms/antispam/AntiSpamItem;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget v0, p1, Lcom/kms/antispam/AntiSpamItem;->mItemType:I

    iput v0, p0, Lcom/kms/antispam/AntiSpamItem;->mItemType:I

    .line 38
    iget v0, p1, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    iput v0, p0, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    .line 39
    iget v0, p1, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    iput v0, p0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    .line 40
    iget-object v0, p1, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    iput-object v0, p0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    iput-object v0, p0, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/kms/free/antispam/AntiSpamItem;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iget v0, p1, Lcom/kms/free/antispam/AntiSpamItem;->mItemType:I

    iput v0, p0, Lcom/kms/antispam/AntiSpamItem;->mItemType:I

    .line 47
    iget v0, p1, Lcom/kms/free/antispam/AntiSpamItem;->mCellEventTypes:I

    iput v0, p0, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    .line 48
    iget v0, p1, Lcom/kms/free/antispam/AntiSpamItem;->mCellValidFields:I

    iput v0, p0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    .line 49
    iget-object v0, p1, Lcom/kms/free/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    iput-object v0, p0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lcom/kms/free/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    iput-object v0, p0, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/kms/antispam/AntiSpamItem;

    if-eqz v0, :cond_0

    .line 55
    check-cast p1, Lcom/kms/antispam/AntiSpamItem;

    .line 56
    if-ne p1, p0, :cond_1

    move v2, v1

    .line 74
    :cond_0
    :goto_0
    return v2

    .line 59
    :cond_1
    iget v0, p0, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    iget v3, p1, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    .line 62
    iget v0, p0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    iget v3, p1, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    if-ne v0, v3, :cond_0

    .line 66
    iget v0, p0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    iget-object v3, p1, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 69
    :goto_1
    iget v3, p0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    iget-object v4, p1, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    or-int/lit8 v0, v0, 0x2

    .line 72
    :cond_2
    iget v3, p0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    if-ne v0, v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 79
    const/16 v0, 0x17

    iget v1, p0, Lcom/kms/antispam/AntiSpamItem;->mItemType:I

    invoke-static {v0, v1}, LeP;->a(II)I

    move-result v0

    .line 81
    iget v1, p0, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    invoke-static {v0, v1}, LeP;->a(II)I

    move-result v0

    .line 82
    iget v1, p0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    invoke-static {v0, v1}, LeP;->a(II)I

    move-result v0

    .line 83
    iget-object v1, p0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, LeP;->a(II)I

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, LeP;->a(II)I

    move-result v0

    .line 85
    return v0
.end method
