import pyautogui


class KeyboardHandler(object):
    def __init__(self):
        pass


    def double_press_down(self):
        pyautogui.hotkey("down", "down")


    def press_enter(self):
        pyautogui.hotkey("enter")


    def press_tab(self):
        pyautogui.hotkey("tab")

