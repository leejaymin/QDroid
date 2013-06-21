.class final Lcom/sun/mail/imap/protocol/c;
.super Ljava/lang/Object;


# static fields
.field private static a:[Ljava/lang/String;

.field private static b:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Jan"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Feb"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Mar"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Apr"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "May"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Jun"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Jul"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Dec"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sun/mail/imap/protocol/c;->a:[Ljava/lang/String;

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    sput-object v0, Lcom/sun/mail/imap/protocol/c;->b:Ljava/util/Calendar;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "FROM"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Ljavax/mail/Message$RecipientType;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    sget-object v1, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    if-ne p0, v1, :cond_0

    const-string v1, "TO"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    if-ne p0, v1, :cond_1

    const-string v1, "CC"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    if-ne p0, v1, :cond_2

    const-string v1, "BCC"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljavax/mail/search/SearchException;

    const-string v1, "Illegal Recipient type"

    invoke-direct {v0, v1}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 8

    const/4 v1, 0x1

    const/4 v5, 0x0

    instance-of v0, p0, Ljavax/mail/search/AndTerm;

    if-eqz v0, :cond_1

    check-cast p0, Ljavax/mail/search/AndTerm;

    invoke-virtual {p0}, Ljavax/mail/search/AndTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object v3

    aget-object v0, v3, v5

    invoke-static {v0, p1}, Lcom/sun/mail/imap/protocol/c;->a(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v1, v3

    if-lt v0, v1, :cond_0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    aget-object v1, v3, v0

    invoke-static {v1, p1}, Lcom/sun/mail/imap/protocol/c;->a(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljavax/mail/search/OrTerm;

    if-eqz v0, :cond_9

    check-cast p0, Ljavax/mail/search/OrTerm;

    invoke-virtual {p0}, Ljavax/mail/search/OrTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object v4

    array-length v0, v4

    const/4 v2, 0x2

    if-le v0, v2, :cond_29

    aget-object v0, v4, v5

    move v2, v1

    :goto_2
    array-length v3, v4

    if-lt v2, v3, :cond_6

    check-cast v0, Ljavax/mail/search/OrTerm;

    invoke-virtual {v0}, Ljavax/mail/search/OrTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object v0

    :goto_3
    new-instance v2, Lcom/sun/mail/iap/Argument;

    invoke-direct {v2}, Lcom/sun/mail/iap/Argument;-><init>()V

    array-length v3, v0

    if-le v3, v1, :cond_2

    const-string v3, "OR"

    invoke-virtual {v2, v3}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    :cond_2
    aget-object v3, v0, v5

    instance-of v3, v3, Ljavax/mail/search/AndTerm;

    if-nez v3, :cond_3

    aget-object v3, v0, v5

    instance-of v3, v3, Ljavax/mail/search/FlagTerm;

    if-eqz v3, :cond_7

    :cond_3
    aget-object v3, v0, v5

    invoke-static {v3, p1}, Lcom/sun/mail/imap/protocol/c;->a(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)V

    :goto_4
    array-length v3, v0

    if-le v3, v1, :cond_5

    aget-object v3, v0, v1

    instance-of v3, v3, Ljavax/mail/search/AndTerm;

    if-nez v3, :cond_4

    aget-object v3, v0, v1

    instance-of v3, v3, Ljavax/mail/search/FlagTerm;

    if-eqz v3, :cond_8

    :cond_4
    aget-object v0, v0, v1

    invoke-static {v0, p1}, Lcom/sun/mail/imap/protocol/c;->a(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)V

    :cond_5
    :goto_5
    move-object v0, v2

    goto :goto_1

    :cond_6
    new-instance v3, Ljavax/mail/search/OrTerm;

    aget-object v6, v4, v2

    invoke-direct {v3, v0, v6}, Ljavax/mail/search/OrTerm;-><init>(Ljavax/mail/search/SearchTerm;Ljavax/mail/search/SearchTerm;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v3

    goto :goto_2

    :cond_7
    aget-object v3, v0, v5

    invoke-static {v3, p1}, Lcom/sun/mail/imap/protocol/c;->a(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)V

    goto :goto_4

    :cond_8
    aget-object v0, v0, v1

    invoke-static {v0, p1}, Lcom/sun/mail/imap/protocol/c;->a(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)V

    goto :goto_5

    :cond_9
    instance-of v0, p0, Ljavax/mail/search/NotTerm;

    if-eqz v0, :cond_c

    check-cast p0, Ljavax/mail/search/NotTerm;

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "NOT"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/mail/search/NotTerm;->getTerm()Ljavax/mail/search/SearchTerm;

    move-result-object v1

    instance-of v2, v1, Ljavax/mail/search/AndTerm;

    if-nez v2, :cond_a

    instance-of v2, v1, Ljavax/mail/search/FlagTerm;

    if-eqz v2, :cond_b

    :cond_a
    invoke-static {v1, p1}, Lcom/sun/mail/imap/protocol/c;->a(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)V

    goto/16 :goto_1

    :cond_b
    invoke-static {v1, p1}, Lcom/sun/mail/imap/protocol/c;->a(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)V

    goto/16 :goto_1

    :cond_c
    instance-of v0, p0, Ljavax/mail/search/HeaderTerm;

    if-eqz v0, :cond_d

    check-cast p0, Ljavax/mail/search/HeaderTerm;

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "HEADER"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/mail/search/HeaderTerm;->getHeaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/mail/search/HeaderTerm;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    instance-of v0, p0, Ljavax/mail/search/FlagTerm;

    if-eqz v0, :cond_1e

    check-cast p0, Ljavax/mail/search/FlagTerm;

    invoke-virtual {p0}, Ljavax/mail/search/FlagTerm;->getTestSet()Z

    move-result v3

    new-instance v2, Lcom/sun/mail/iap/Argument;

    invoke-direct {v2}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {p0}, Ljavax/mail/search/FlagTerm;->getFlags()Ljavax/mail/Flags;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/Flags;->getSystemFlags()[Ljavax/mail/Flags$Flag;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;

    move-result-object v6

    array-length v0, v4

    if-nez v0, :cond_e

    array-length v0, v6

    if-nez v0, :cond_e

    new-instance v0, Ljavax/mail/search/SearchException;

    const-string v1, "Invalid FlagTerm"

    invoke-direct {v0, v1}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move v0, v5

    :goto_6
    array-length v1, v4

    if-lt v0, v1, :cond_f

    :goto_7
    array-length v0, v6

    if-lt v5, v0, :cond_1c

    move-object v0, v2

    goto/16 :goto_1

    :cond_f
    aget-object v1, v4, v0

    sget-object v7, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    if-ne v1, v7, :cond_12

    if-eqz v3, :cond_11

    const-string v1, "DELETED"

    :goto_8
    invoke-virtual {v2, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    :cond_10
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_11
    const-string v1, "UNDELETED"

    goto :goto_8

    :cond_12
    aget-object v1, v4, v0

    sget-object v7, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    if-ne v1, v7, :cond_14

    if-eqz v3, :cond_13

    const-string v1, "ANSWERED"

    :goto_a
    invoke-virtual {v2, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_9

    :cond_13
    const-string v1, "UNANSWERED"

    goto :goto_a

    :cond_14
    aget-object v1, v4, v0

    sget-object v7, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    if-ne v1, v7, :cond_16

    if-eqz v3, :cond_15

    const-string v1, "DRAFT"

    :goto_b
    invoke-virtual {v2, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_9

    :cond_15
    const-string v1, "UNDRAFT"

    goto :goto_b

    :cond_16
    aget-object v1, v4, v0

    sget-object v7, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    if-ne v1, v7, :cond_18

    if-eqz v3, :cond_17

    const-string v1, "FLAGGED"

    :goto_c
    invoke-virtual {v2, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_9

    :cond_17
    const-string v1, "UNFLAGGED"

    goto :goto_c

    :cond_18
    aget-object v1, v4, v0

    sget-object v7, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    if-ne v1, v7, :cond_1a

    if-eqz v3, :cond_19

    const-string v1, "RECENT"

    :goto_d
    invoke-virtual {v2, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_9

    :cond_19
    const-string v1, "OLD"

    goto :goto_d

    :cond_1a
    aget-object v1, v4, v0

    sget-object v7, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    if-ne v1, v7, :cond_10

    if-eqz v3, :cond_1b

    const-string v1, "SEEN"

    :goto_e
    invoke-virtual {v2, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_9

    :cond_1b
    const-string v1, "UNSEEN"

    goto :goto_e

    :cond_1c
    if-eqz v3, :cond_1d

    const-string v0, "KEYWORD"

    :goto_f
    invoke-virtual {v2, v0}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    aget-object v0, v6, v5

    invoke-virtual {v2, v0}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_1d
    const-string v0, "UNKEYWORD"

    goto :goto_f

    :cond_1e
    instance-of v0, p0, Ljavax/mail/search/FromTerm;

    if-eqz v0, :cond_1f

    check-cast p0, Ljavax/mail/search/FromTerm;

    invoke-virtual {p0}, Ljavax/mail/search/FromTerm;->getAddress()Ljavax/mail/Address;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sun/mail/imap/protocol/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v0

    goto/16 :goto_1

    :cond_1f
    instance-of v0, p0, Ljavax/mail/search/FromStringTerm;

    if-eqz v0, :cond_20

    check-cast p0, Ljavax/mail/search/FromStringTerm;

    invoke-virtual {p0}, Ljavax/mail/search/FromStringTerm;->getPattern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sun/mail/imap/protocol/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v0

    goto/16 :goto_1

    :cond_20
    instance-of v0, p0, Ljavax/mail/search/RecipientTerm;

    if-eqz v0, :cond_21

    check-cast p0, Ljavax/mail/search/RecipientTerm;

    invoke-virtual {p0}, Ljavax/mail/search/RecipientTerm;->getRecipientType()Ljavax/mail/Message$RecipientType;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/mail/search/RecipientTerm;->getAddress()Ljavax/mail/Address;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/sun/mail/imap/protocol/c;->a(Ljavax/mail/Message$RecipientType;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v0

    goto/16 :goto_1

    :cond_21
    instance-of v0, p0, Ljavax/mail/search/RecipientStringTerm;

    if-eqz v0, :cond_22

    check-cast p0, Ljavax/mail/search/RecipientStringTerm;

    invoke-virtual {p0}, Ljavax/mail/search/RecipientStringTerm;->getRecipientType()Ljavax/mail/Message$RecipientType;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/mail/search/RecipientStringTerm;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/sun/mail/imap/protocol/c;->a(Ljavax/mail/Message$RecipientType;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v0

    goto/16 :goto_1

    :cond_22
    instance-of v0, p0, Ljavax/mail/search/SubjectTerm;

    if-eqz v0, :cond_23

    check-cast p0, Ljavax/mail/search/SubjectTerm;

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "SUBJECT"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/mail/search/SubjectTerm;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_23
    instance-of v0, p0, Ljavax/mail/search/BodyTerm;

    if-eqz v0, :cond_24

    check-cast p0, Ljavax/mail/search/BodyTerm;

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "BODY"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/mail/search/BodyTerm;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_24
    instance-of v0, p0, Ljavax/mail/search/SizeTerm;

    if-eqz v0, :cond_25

    check-cast p0, Ljavax/mail/search/SizeTerm;

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {p0}, Ljavax/mail/search/SizeTerm;->getComparison()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljavax/mail/search/SearchException;

    const-string v1, "Cannot handle Comparison"

    invoke-direct {v0, v1}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string v1, "LARGER"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    :goto_10
    invoke-virtual {p0}, Ljavax/mail/search/SizeTerm;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeNumber(I)V

    goto/16 :goto_1

    :pswitch_2
    const-string v1, "SMALLER"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_10

    :cond_25
    instance-of v0, p0, Ljavax/mail/search/SentDateTerm;

    if-eqz v0, :cond_26

    check-cast p0, Ljavax/mail/search/SentDateTerm;

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {p0}, Ljavax/mail/search/DateTerm;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/mail/imap/protocol/c;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/mail/search/DateTerm;->getComparison()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    new-instance v0, Ljavax/mail/search/SearchException;

    const-string v1, "Cannot handle Date Comparison"

    invoke-direct {v0, v1}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SENTSINCE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SENTON "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SENTBEFORE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OR SENTSINCE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SENTON "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OR SENTBEFORE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SENTON "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NOT SENTON "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_26
    instance-of v0, p0, Ljavax/mail/search/ReceivedDateTerm;

    if-eqz v0, :cond_27

    check-cast p0, Ljavax/mail/search/ReceivedDateTerm;

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {p0}, Ljavax/mail/search/DateTerm;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/mail/imap/protocol/c;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/mail/search/DateTerm;->getComparison()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    new-instance v0, Ljavax/mail/search/SearchException;

    const-string v1, "Cannot handle Date Comparison"

    invoke-direct {v0, v1}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SINCE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ON "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BEFORE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OR SINCE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ON "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OR BEFORE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ON "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NOT ON "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_27
    instance-of v0, p0, Ljavax/mail/search/MessageIDTerm;

    if-eqz v0, :cond_28

    check-cast p0, Ljavax/mail/search/MessageIDTerm;

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "HEADER"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    const-string v1, "Message-ID"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/mail/search/MessageIDTerm;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_28
    new-instance v0, Ljavax/mail/search/SearchException;

    const-string v1, "Search too complex"

    invoke-direct {v0, v1}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    move-object v0, v4

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_3
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_d
        :pswitch_b
        :pswitch_a
        :pswitch_e
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lcom/sun/mail/imap/protocol/c;->b:Ljava/util/Calendar;

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    sget-object v1, Lcom/sun/mail/imap/protocol/c;->b:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/sun/mail/imap/protocol/c;->a:[Ljava/lang/String;

    sget-object v2, Lcom/sun/mail/imap/protocol/c;->b:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/sun/mail/imap/protocol/c;->b:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static a(Ljavax/mail/search/SearchTerm;)Z
    .locals 4

    const/4 v2, 0x0

    move-object v0, p0

    :goto_0
    instance-of v1, v0, Ljavax/mail/search/AndTerm;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljavax/mail/search/OrTerm;

    if-eqz v1, :cond_5

    :cond_0
    instance-of v1, v0, Ljavax/mail/search/AndTerm;

    if-eqz v1, :cond_3

    check-cast v0, Ljavax/mail/search/AndTerm;

    invoke-virtual {v0}, Ljavax/mail/search/AndTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object v0

    :goto_1
    move v1, v2

    :goto_2
    array-length v3, v0

    if-lt v1, v3, :cond_4

    :cond_1
    const/4 v2, 0x1

    :cond_2
    :goto_3
    return v2

    :cond_3
    check-cast v0, Ljavax/mail/search/OrTerm;

    invoke-virtual {v0}, Ljavax/mail/search/OrTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object v0

    goto :goto_1

    :cond_4
    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/sun/mail/imap/protocol/c;->a(Ljavax/mail/search/SearchTerm;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    instance-of v1, v0, Ljavax/mail/search/NotTerm;

    if-eqz v1, :cond_6

    check-cast v0, Ljavax/mail/search/NotTerm;

    invoke-virtual {v0}, Ljavax/mail/search/NotTerm;->getTerm()Ljavax/mail/search/SearchTerm;

    move-result-object v0

    goto :goto_0

    :cond_6
    instance-of v1, v0, Ljavax/mail/search/StringTerm;

    if-eqz v1, :cond_7

    check-cast v0, Ljavax/mail/search/StringTerm;

    invoke-virtual {v0}, Ljavax/mail/search/StringTerm;->getPattern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/imap/protocol/c;->a(Ljava/lang/String;)Z

    move-result v2

    goto :goto_3

    :cond_7
    instance-of v1, v0, Ljavax/mail/search/AddressTerm;

    if-eqz v1, :cond_1

    check-cast v0, Ljavax/mail/search/AddressTerm;

    invoke-virtual {v0}, Ljavax/mail/search/AddressTerm;->getAddress()Ljavax/mail/Address;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/imap/protocol/c;->a(Ljava/lang/String;)Z

    move-result v2

    goto :goto_3
.end method
