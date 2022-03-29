package mobi.klimaszewski.demo.multiplatform

import androidx.lifecycle.ViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import mobi.klimaszewski.demo.common.GetParticipantsUseCase

class MainViewModel: ViewModel() {

    private val getParticipantsUseCase = GetParticipantsUseCase()
    private val _participants = MutableStateFlow(emptyList<String>())
    val participants : StateFlow<List<String>> = _participants

    init {
        _participants.value = getParticipantsUseCase.invoke()
    }
}