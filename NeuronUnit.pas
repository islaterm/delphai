unit NeuronUnit;

interface

type
  INeuron = interface(IInterface)
    /// <summary> Adjusts the delta value of the neuron according to the error
    /// received during backpropagation
    /// </summary>
    procedure adjustDeltaWith(error: Double);
    /// <summary> Feeds the neuron with a list of inputs and returns an output
    /// given by the activation function.
    /// </summary>

    (*
      /**
      * Feeds the neuron with a list of {@code inputs} and
      * returns an {@code output} given by the activation
      * function.
      */
      double feed(double... inputs);

      /**
      * Trains the neuron based on a desired output.
      * <p>
      * The weight and bias of the neuron will be adjusted
      * according to the difference between the expected and
      * the actual output of feeding the input to the neuron.
      *
      * @param inputs
      *     the values to be fed to the neuron
      */
      void train(double desiredOutput, double... inputs);
      // endregion

      // region : getters/setters

      /**
      * Returns an unmodifiable copy of the neuron's weights.
      */
      DoubleColumn getWeights();

      /**
      * Sets the weights of the neuron.
      */
      void setWeights(double... weights);

      /** Returns the bias of the neuron. */
      double getBias();

      /** Sets the bias of the neuron. */
      void setBias(double bias);

      /**
      * Returns the difference between this neuron's output and
      * the expected one
      */
      double getDelta();

      /**
      * Returns the neuron's learning rate
      */
      double getLearningRate();

      /**
      * Sets the learning rate of the neuron
      */
      void setLearningRate(double learningRate);

      /**
      * Returns the output value computed by {@link
      * #feed(double...)}.
      */
      double getOutput();

      /**
      * Adjusts the weights of the neuron given an initial
      * input.
      */
      void adjustWeightsWithInput(double... inputs); *)
  end;

implementation

end.
