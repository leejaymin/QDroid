.class Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mContactID:J

.field public mContactPhones:Ljava/util/HashSet;

.field public mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/kms/privacyprotection/PPItemsStorage;


# direct methods
.method constructor <init>(Lcom/kms/privacyprotection/PPItemsStorage;JLjava/lang/String;Ljava/util/HashSet;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->this$0:Lcom/kms/privacyprotection/PPItemsStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-wide p2, p0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactID:J

    .line 237
    iput-object p4, p0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mName:Ljava/lang/String;

    .line 238
    iput-object p5, p0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactPhones:Ljava/util/HashSet;

    .line 239
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;)I
    .locals 2
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 228
    check-cast p1, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;

    invoke-virtual {p0, p1}, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->compareTo(Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;)I

    move-result v0

    return v0
.end method
