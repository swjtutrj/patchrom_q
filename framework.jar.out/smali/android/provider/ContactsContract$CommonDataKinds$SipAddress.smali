#--RESOURCEREMAPPER
.class public final Landroid/provider/ContactsContract$CommonDataKinds$SipAddress;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SipAddress"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/sip_address"

.field public static final SIP_ADDRESS:Ljava/lang/String; = "data1"

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_WORK:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6904
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "res"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 6940
    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6944
    .end local p2
    :goto_0
    return-object p2

    .line 6943
    .restart local p2
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$SipAddress;->getTypeLabelResource(I)I

    move-result v0

    .line 6944
    .local v0, labelRes:I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0
.end method

.method public static final getTypeLabelResource(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 6925
    packed-switch p0, :pswitch_data_0

    .line 6929
    const v0, 0x10402dc		#[0x10402d8]string:sipAddressTypeCustom

    :goto_0
    return v0

    .line 6926
    :pswitch_0
    const v0, 0x10402dd		#[0x10402d9]string:sipAddressTypeHome

    goto :goto_0

    .line 6927
    :pswitch_1
    const v0, 0x10402de		#[0x10402da]string:sipAddressTypeWork

    goto :goto_0

    .line 6928
    :pswitch_2
    const v0, 0x10402df		#[0x10402db]string:sipAddressTypeOther

    goto :goto_0

    .line 6925
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
