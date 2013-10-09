.class public Lcom/android/settingsstock/tts/TtsEnginePreference;
.super Landroid/preference/Preference;
.source "TtsEnginePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/tts/TtsEnginePreference$RadioButtonGroupState;
    }
.end annotation


# static fields
.field static final FRAGMENT_ARGS_LABEL:Ljava/lang/String; = "label"

.field static final FRAGMENT_ARGS_NAME:Ljava/lang/String; = "name"

.field static final FRAGMENT_ARGS_VOICES:Ljava/lang/String; = "voices"

.field private static final TAG:Ljava/lang/String; = "TtsEnginePreference"


# instance fields
.field private final mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

.field private final mPreferenceActivity:Landroid/preference/PreferenceActivity;

.field private volatile mPreventRadioButtonCallbacks:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private final mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSettingsIcon:Landroid/view/View;

.field private final mSharedState:Lcom/android/settingsstock/tts/TtsEnginePreference$RadioButtonGroupState;

.field private mVoiceCheckData:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settingsstock/tts/TtsEnginePreference$RadioButtonGroupState;Landroid/preference/PreferenceActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settingsstock/tts/TtsEnginePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/tts/TtsEnginePreference$1;-><init>(Lcom/android/settingsstock/tts/TtsEnginePreference;)V

    iput-object v0, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const v0, 0x7f04007a

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/tts/TtsEnginePreference;->setLayoutResource(I)V

    iput-object p3, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mSharedState:Lcom/android/settingsstock/tts/TtsEnginePreference$RadioButtonGroupState;

    iput-object p4, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    iput-object p2, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    iget-object v0, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/tts/TtsEnginePreference;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/tts/TtsEnginePreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/tts/TtsEnginePreference;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingsstock/tts/TtsEnginePreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settingsstock/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settingsstock/tts/TtsEnginePreference;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settingsstock/tts/TtsEnginePreference;)Landroid/preference/PreferenceActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    return-object v0
.end method

.method private onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mSharedState:Lcom/android/settingsstock/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settingsstock/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "TtsEnginePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRadioButtonClicked--->>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mSharedState:Lcom/android/settingsstock/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settingsstock/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mSharedState:Lcom/android/settingsstock/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settingsstock/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mSharedState:Lcom/android/settingsstock/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0, p1}, Lcom/android/settingsstock/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    iget-object v0, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mSharedState:Lcom/android/settingsstock/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-virtual {p0}, Lcom/android/settingsstock/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settingsstock/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mSharedState:Lcom/android/settingsstock/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settingsstock/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/tts/TtsEnginePreference;->callChangeListener(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mSharedState:Lcom/android/settingsstock/tts/TtsEnginePreference$RadioButtonGroupState;

    if-nez v6, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Call to getView() before a call tosetSharedState()"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f08012e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mSharedState:Lcom/android/settingsstock/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v7}, Lcom/android/settingsstock/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mSharedState:Lcom/android/settingsstock/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v6, v1}, Lcom/android/settingsstock/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    :cond_1
    iput-boolean v4, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iput-boolean v5, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    iput-object v1, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    const v6, 0x7f08012f

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v6, Lcom/android/settingsstock/tts/TtsEnginePreference$2;

    invoke-direct {v6, p0, v1}, Lcom/android/settingsstock/tts/TtsEnginePreference$2;-><init>(Lcom/android/settingsstock/tts/TtsEnginePreference;Landroid/widget/RadioButton;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f080130

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v7, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    if-eqz v7, :cond_3

    :goto_0
    invoke-virtual {v6, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    new-instance v5, Lcom/android/settingsstock/tts/TtsEnginePreference$3;

    invoke-direct {v5, p0}, Lcom/android/settingsstock/tts/TtsEnginePreference$3;-><init>(Lcom/android/settingsstock/tts/TtsEnginePreference;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-object v3

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public setVoiceDataDetails(Landroid/content/Intent;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settingsstock/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method
