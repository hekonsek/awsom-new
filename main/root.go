package main

import (
	"github.com/hekonsek/osexit"
	"github.com/spf13/cobra"
)

var RootCmd = &cobra.Command{
	Use:   "awsom",
	Short: "Awsom - easy AWS applications",

	Run: func(cmd *cobra.Command, args []string) {
		osexit.ExitOnError(cmd.Help())
	},
}

func main() {
	osexit.ExitOnError(RootCmd.Execute())
}
