import Component from "@glimmer/component";

export default class CharacterCountComponent extends Component {
  get showRequired() {
    return this.args.missingReplyCharacters > 0;
  }

  get charCount() {
    const warning = this.args.showWarning ? " 请勿用字数补丁" : "";
    return this.showRequired
      ? `${this.args.length} / ${this.args.minimumLength}${warning}`
      : settings.character_count_hide_count_when_sufficient
        ? ""
        : `${this.args.length}`;
  }

  <template>
    <div class="character-counts {{if this.showRequired 'more-required'}}">
      {{this.charCount}}
    </div>
  </template>
}
