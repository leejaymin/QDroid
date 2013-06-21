.class public Lcom/kms/privacyprotection/PPItemsStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static a:Lcom/kms/privacyprotection/PPItemsStorage; = null

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private mContacts:Ljava/util/TreeSet;

.field private mPhones:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/kms/privacyprotection/PPItemsStorage;->a:Lcom/kms/privacyprotection/PPItemsStorage;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mPhones:Ljava/util/HashSet;

    .line 58
    return-void
.end method

.method private static a()Lcom/kms/privacyprotection/PPItemsStorage;
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 29
    new-instance v1, Ljava/io/File;

    const-string v2, "ppitems.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    invoke-static {v1}, LS;->a(Ljava/io/File;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/kms/privacyprotection/PPItemsStorage;

    .line 32
    if-nez v0, :cond_0

    new-instance v0, Lcom/kms/privacyprotection/PPItemsStorage;

    invoke-direct {v0}, Lcom/kms/privacyprotection/PPItemsStorage;-><init>()V

    :cond_0
    return-object v0
.end method

.method private a(JJ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;

    .line 220
    iget-wide v2, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactID:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 221
    iput-wide p3, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactID:J

    .line 222
    invoke-virtual {p0}, Lcom/kms/privacyprotection/PPItemsStorage;->toFile()V

    .line 226
    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/kms/privacyprotection/PPItemsStorage;
    .locals 2

    .prologue
    .line 49
    const-class v1, Lcom/kms/privacyprotection/PPItemsStorage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kms/privacyprotection/PPItemsStorage;->a:Lcom/kms/privacyprotection/PPItemsStorage;

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->a()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v0

    sput-object v0, Lcom/kms/privacyprotection/PPItemsStorage;->a:Lcom/kms/privacyprotection/PPItemsStorage;

    .line 52
    :cond_0
    sget-object v0, Lcom/kms/privacyprotection/PPItemsStorage;->a:Lcom/kms/privacyprotection/PPItemsStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public AddContact(J)V
    .locals 7
    .parameter

    .prologue
    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/kms/privacyprotection/PPItemsStorage;->contactInList(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 152
    invoke-static {}, Lgr;->a()Lgr;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lgr;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 153
    invoke-static {}, Lgr;->a()Lgr;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lgr;->d(Landroid/content/Context;J)Ljava/util/Set;

    move-result-object v5

    .line 154
    iget-object v6, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    new-instance v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;

    check-cast v5, Ljava/util/HashSet;

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;-><init>(Lcom/kms/privacyprotection/PPItemsStorage;JLjava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v6, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {p0}, Lcom/kms/privacyprotection/PPItemsStorage;->toFile()V

    .line 158
    :cond_0
    return-void
.end method

.method public addPhone(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mPhones:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mPhones:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {p0}, Lcom/kms/privacyprotection/PPItemsStorage;->toFile()V

    .line 198
    :cond_0
    return-void
.end method

.method public contactInList(J)Z
    .locals 4
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;

    .line 182
    iget-wide v2, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactID:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x1

    .line 186
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContactNameAndPhonesForId(Ljava/lang/Long;)Ljava/util/Vector;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 108
    .line 110
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;

    .line 111
    iget-wide v3, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactID:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 112
    iget-object v1, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mName:Ljava/lang/String;

    .line 113
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 114
    iget-object v0, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactPhones:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_1
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 122
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 124
    return-object v2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public getContactNamesAndPhones()Ljava/util/Map;
    .locals 6

    .prologue
    .line 89
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 90
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;

    .line 92
    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v3, v1, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 93
    iget-object v1, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactPhones:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 94
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const-string v1, "; "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 101
    :cond_0
    iget-object v0, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 103
    :cond_1
    return-object v2
.end method

.method public getContactPhones(J)Ljava/util/Set;
    .locals 5
    .parameter

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;

    .line 80
    iget-wide v3, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactID:J

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    .line 81
    iget-object v0, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactPhones:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 85
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getContactsIds()Ljava/util/Vector;
    .locals 5

    .prologue
    .line 64
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 65
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;

    .line 66
    iget-wide v3, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_0
    return-object v1
.end method

.method public getPhones()Ljava/util/Set;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mPhones:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 131
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mPhones:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public numberInList(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mPhones:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 168
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mPhones:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 169
    invoke-virtual {p0}, Lcom/kms/privacyprotection/PPItemsStorage;->toFile()V

    .line 170
    return-void
.end method

.method public removeContact(I)V
    .locals 2
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 175
    invoke-virtual {p0}, Lcom/kms/privacyprotection/PPItemsStorage;->toFile()V

    .line 176
    return-void
.end method

.method public removePhone(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mPhones:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/kms/privacyprotection/PPItemsStorage;->toFile()V

    .line 164
    :cond_0
    return-void
.end method

.method public syncContacts()V
    .locals 7

    .prologue
    .line 202
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 203
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mContacts:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 204
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;

    .line 207
    invoke-static {}, Lgr;->a()Lgr;

    move-result-object v3

    iget-wide v4, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactID:J

    invoke-virtual {v3, v1, v4, v5}, Lgr;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mName:Ljava/lang/String;

    .line 208
    iget-object v3, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactPhones:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 209
    iget-object v3, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactPhones:Ljava/util/HashSet;

    invoke-static {}, Lgr;->a()Lgr;

    move-result-object v4

    iget-wide v5, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactID:J

    invoke-virtual {v4, v1, v5, v6}, Lgr;->d(Landroid/content/Context;J)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 210
    iget-object v3, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mContactPhones:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/kms/privacyprotection/PPItemsStorage$ContactEntry;->mName:Ljava/lang/String;

    invoke-static {v0}, Lfn;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 215
    :cond_1
    return-void
.end method

.method public declared-synchronized toFile()V
    .locals 3

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/io/File;

    const-string v2, "ppitems.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    invoke-static {v1, p0}, LS;->a(Ljava/io/File;Ljava/io/Serializable;)Z

    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 43
    const-string v0, "KMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t save "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateContacts(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 136
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 137
    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/kms/privacyprotection/PPItemsStorage;->a(JJ)V

    .line 136
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

.method public updatePhone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mPhones:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/kms/privacyprotection/PPItemsStorage;->mPhones:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {p0}, Lcom/kms/privacyprotection/PPItemsStorage;->toFile()V

    .line 147
    :cond_0
    return-void
.end method
