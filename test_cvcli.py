from click.testing import CliRunner
from cvcli import get_labels


def test_lebels():
    runner = CliRunner()
    result = runner.invoke(get_labels, ["--bucket", "test", "--name", "test.jpg"])
    assert result.exit_code != 0
    print(result.output)
