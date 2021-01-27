unit NeuronUnit;

interface

type
  INeuron = interface(IInterface)

    {$region 'Learning methods'}
    procedure Adjustbias;
    /// <summary> Adjusts the delta value of the neuron according to the error
    /// received during backpropagation
    /// </summary>
    procedure Adjustdeltawith(Error: Double);
    /// <summary> Feeds the neuron with a list of inputs and returns an output
    /// given by the activation function.
    /// </summary>
    function Feed(Inputs: Double): Double; varargs;
    /// <summary> Trains the neuron based on a desired output.
    /// 
    /// The weight and bias of the neuron will be adjusted according to the difference between the 
    /// expected and the actual output of feeding the input to the neuron.
    /// </summary>
    /// <param name="inputs"> the values to be fed to the neuron
    /// </param>
    procedure Train(Desiredoutput: Double; Inputs: Double); varargs;
    {$endregion}

    {$region 'Properties'}
    procedure SetWeights(Weights: Array of Double);
    function GetWeights: Array of Double;
    property Weights: Array of Double read GetWeights write SetWeights;

    {$endregion}
    (*
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
