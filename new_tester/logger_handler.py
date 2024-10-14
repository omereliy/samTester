import logging
import colorlog
from pathlib import Path

# Configure the logger
def get_logger(name, level=logging.DEBUG, iter_info=""):
    """Function to set up as many loggers as you want"""
    logger = logging.getLogger(f"{name}{iter_info}")
    logger.setLevel(level)

    # Avoid duplicate handlers if logger is already configured
    if not logger.handlers:
        # Create handlers for file and console
        log_file = f'outputs/logs/{name}{iter_info}.log'
        file_handler = logging.FileHandler(log_file)
        file_handler.setLevel(level)

        console_handler = logging.StreamHandler()
        console_handler.setLevel(level)

        # Create standard formatter for file
        file_formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')

        # Create colored formatter for console
        console_formatter = colorlog.ColoredFormatter(
            "%(log_color)s%(name)s - %(levelname)s - %(message)s",
            log_colors={
                'DEBUG': 'cyan',
                'INFO': 'green',
                'WARNING': 'yellow',
                'ERROR': 'red',
                'CRITICAL': 'bold_red',
            }
        )

        # Add formatters to handlers
        file_handler.setFormatter(file_formatter)
        console_handler.setFormatter(console_formatter)

        # Add handlers to the logger
        logger.addHandler(file_handler)
        logger.addHandler(console_handler)

    # Clear the previous handlers before setting new ones
    logger.handlers.clear()

    return logger

main_logger = logging.getLogger(__name__)
main_logger.handlers.clear()
main_logger.setLevel(logging.DEBUG)

file_handler = logging.FileHandler('outputs/logs//main_debug.log')
file_handler.setLevel(logging.DEBUG)
file_formatter1 = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
file_handler.setFormatter(file_formatter1)
main_logger.addHandler(file_handler)

console_handler = logging.StreamHandler()
console_handler.setLevel(logging.DEBUG)
console_formatter = colorlog.ColoredFormatter(
    "%(log_color)s%(name)s - %(levelname)s - %(message)s",
    log_colors={
        'DEBUG': 'cyan',
        'INFO': 'green',
        'WARNING': 'yellow',
        'ERROR': 'red',
        'CRITICAL': 'bold_red',
    }
)
console_handler.setFormatter(console_formatter)
main_logger.addHandler(console_handler)